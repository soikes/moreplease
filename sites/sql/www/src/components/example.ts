import { LitElement, html } from "lit";
import { Task } from "@lit/task";
import { customElement, property, state } from "lit/decorators.js";
import { Db } from "../db/db.js";
import { MarkdownFormatter } from "../db/formatter.js";

@customElement("sql-example")
class SQLExample extends LitElement {
  private _db: Db;

  @property({ type: String })
  schema: string;

  @property({ type: String })
  stmt: string;

  @property({ type: String })
  result: string;

  private _loadTask = new Task(this, {
    task: async ([schema]) => {
      try {
        this._db = await Db.load(schema);
      } catch (error) {
        console.error(
          `failed to initialize SQLite database with schema ${schema}:
          ${error}`,
        );
        return;
      }
      this._execTask.run([this.stmt]);
    },
    args: () => [this.schema],
  });

  private _execTask = new Task(this, {
    task: async ([stmt]) => {
      const res = this._db.exec(stmt);
      const fmt = MarkdownFormatter.fromResult(res);
      this.result = fmt.toString();
    },
    autoRun: false,
    args: () => [this.stmt],
  });

  private _runSQL() {
    console.log(`running ${this.stmt}`);
    this._execTask.run([this.stmt]);
  }

  render() {
    return html`
      <textarea
        .value=${this.stmt}
        @input="${(e) => (this.stmt = e.target.value)}"
      ></textarea>
      <button class="run" @click=${this._runSQL}>&#9654; run</button>
      ${this._loadTask.render({
        initial: () => html`<p>load initial...</p>`,
        pending: () => html`<p>load pending...</p>`,
        complete: () => html`
          ${this._execTask.render({
            initial: () => html`<p>exec initial...</p>`,
            pending: () => html`<p>exec running...</p>`,
            complete: () => html`<pre>${this.result}</pre>`,
            error: (error) => html`<p>${error}</p>`,
          })}
        `,
        error: (error) => html`<p>${error}</p>`,
      })}
    `;
  }
}

declare global {
  interface HTMLElementTagNameMap {
    "sql-example": SQLExample;
  }
}
