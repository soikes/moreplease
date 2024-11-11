import { LitElement, html } from "lit";
import { customElement, property } from "lit/decorators.js";
import { Stmt } from "../db/stmt.js";
import { Database } from "sql.js";

@customElement("sql-example")
class SQLExample extends LitElement {
  @property()
  db: Database;

  @property()
  stmt: string;

  @property()
  result: string;

  protected firstUpdated(): void {
    if (!this.stmt) {
      return;
    }
    const res = this.db.exec(this.stmt);
    this.result = res.toString();
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
