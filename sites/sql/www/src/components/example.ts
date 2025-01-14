import { Db } from "../db/db";
import { MarkdownFormatter } from "../db/formatter";
import { highlightElement } from "prismjs";

const letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
const ddlRegex = /\b(CREATE TABLE|ALTER TABLE|DROP TABLE)\b/gi;
const dmlRegex =
  /\b(?![\s\S]*RETURNING)[\s\S]*(INSERT|UPDATE|DELETE|MERGE|UPSERT)\b/gi;
const dqlRegex = /\b(SELECT)\b/gi;
const noRowsMsg = "No rows returned.";
const fatalMsg = "Failed to initialize database. Check console logs for error.";

function exampleID(): string {
  return Array(10)
    .map(() => letters[Math.floor(Math.random() * letters.length)])
    .join("");
}

interface SQLExampleState {
  schema: string;
  stmt: string;
  result: string;
}

export class SQLExample extends HTMLElement {
  #state: Map<string, string>;
  #effects: Map<string, Function[]>;

  db: Db;
  initialStmt: string;

  constructor() {
    super();
  }

  async connectedCallback() {
    this.initState();
    this.initReactivity();
    await this.initDb();
  }

  initState() {
    const handler: ProxyHandler<Map<string, string>> = {
      get: (target: Map<string, string>, prop: string | symbol) => {
        if (prop == "set") {
          return (key: string, value: string) => {
            const res = target.set(key, value);
            const effects = this.#effects.get(key);
            if (effects !== undefined) {
              for (const effect of effects) {
                effect(value);
              }
            }
            return res;
          };
        }
        const value = target[prop as any];
        return typeof value === "function" ? value.bind(target) : value;
      },
    };

    this.#state = new Proxy(new Map<string, string>(), handler);
    this.#effects = new Map<string, Function[]>();
  }

  onStateChange(key: string, effect: (stateValue: string) => void) {
    let effects = this.#effects.get(key);
    if (effects === undefined) effects = [];
    effects.push(effect);
    this.#effects.set(key, effects);
  }

  initReactivity() {
    if (this.dataset.schema === undefined) return;
    if (this.dataset.stmt === undefined) return;
    this.#state.set("schema", this.dataset.schema);
    this.#state.set("stmt", this.dataset.stmt);
    this.#state.set("result", "");

    this.initialStmt = this.dataset.stmt;

    const textarea = this.querySelector("textarea");
    if (textarea != null) {
      textarea.value = this.initialStmt;
      this.onStateChange("stmt", (value) => {
        textarea.value = value;
      });

      textarea.addEventListener("input", (_: Event) => {
        this.#state.set("stmt", textarea.value);
      });
      const parent = textarea.parentNode as HTMLElement;
      if (parent != null) {
        this.onStateChange("stmt", (value) => {
          parent.dataset.replicatedValue = value;
        });
      }
    }
    const code = this.querySelector("code");
    if (code != null) {
      const updateEditor = (value: string) => {
        code.textContent = value;
        highlightElement(code);
      };
      updateEditor(this.initialStmt);
      this.onStateChange("stmt", updateEditor);
    }
    const result = this.querySelector("#result") as HTMLElement;
    if (result != null) {
      this.onStateChange("result", (value) => {
        result.innerText = value;
      });
    }
    const run = this.querySelector("#run") as HTMLElement;
    if (run != null) {
      run.addEventListener("click", () => {
        this.run();
      });
    }
    const reset = this.querySelector("#reset") as HTMLElement;
    if (reset != null) {
      reset.addEventListener("click", () => {
        this.reset();
      });
    }
  }

  /** run() runs a series of SQL statements and returns information depending on the statement type.
  If the statement is a DML statement, the number of rows modified is returned.
  Otherwise, the row information from the final statement in the series is returned.
  */
  run() {
    let result: string;
    try {
      const stmt = this.#state.get("stmt");
      if (stmt === undefined) return;
      switch (this.stmtType(stmt)) {
        case "dml":
          let modified = this.db.run(stmt);
          result = `${modified} ${this.pluralize("row", modified > 1 || modified == 0)} modified.`;
          break;
        case "ddl":
        case "dql":
          let res = this.db.exec(stmt);
          if (res.length == 0) {
            result = noRowsMsg;
            break;
          }
          result = MarkdownFormatter.fromResult(res[res.length - 1]).toString();
          break;
      }
    } catch (error) {
      result = error.toString();
    }
    this.#state.set("result", result);
  }

  async reset() {
    this.db.close();
    this.#state.set("stmt", this.initialStmt);
    await this.initDb();
  }

  stmtType(stmt: string) {
    if (stmt.match(dmlRegex) !== null) {
      return "dml";
    }
    if (stmt.match(ddlRegex) !== null) {
      return "ddl";
    }
    return "dql";
  }

  // Does not work for all words. Used for the word "row".
  pluralize(input: string, pluralize: boolean) {
    return pluralize ? input + "s" : input;
  }

  async initDb() {
    this.#state.set("result", ``);
    try {
      this.db = await Db.create(this.#state.get("schema"));
    } catch (error) {
      console.error(error);
      this.#state.set("result", fatalMsg);
      return;
    }
    this.run();
  }
}
