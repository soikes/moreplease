import { LitElement, html } from "lit";
import { Task } from "@lit/task";
import { customElement, property } from "lit/decorators.js";
import { Stmt } from "../db/stmt.js";
import { MarkdownFormatter } from "../db/formatter.js";

@customElement("sql-example")
class SQLExample extends LitElement {
  private _stmt: Stmt;

  private _initTask = new Task(this, {
    task: async () => {
      try {
        this._stmt = await Stmt.load(this.schema);
      } catch (error) {
        console.log(
          `failed to initialize SQLite database with schema ${this.schema}: ${error}`,
        );
      }
    },
  });

  constructor() {
    super();
    this._initTask.run();
  }

  @property()
  schema: string;

  @property()
  stmt: string;

  @property({ attribute: false })
  result: string;

  willUpdate() {
    const res = this._stmt.exec(this.stmt);
    const fmt = MarkdownFormatter.fromResult(res);
    this.result = fmt.toString();
  }

  render() {
    return html`<pre>${this.result}</pre>`;
  }
}

declare global {
  interface HTMLElementTagNameMap {
    "sql-example": SQLExample;
  }
}
