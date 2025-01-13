import { Db } from "../db/db";
import { MarkdownFormatter } from "../db/formatter";
import * as Prism from "prismjs";

const ddlRegex = /\b(CREATE TABLE|ALTER TABLE|DROP TABLE)\b/gi;
const dmlRegex =
  /\b(?![\s\S]*RETURNING)[\s\S]*(INSERT|UPDATE|DELETE|MERGE|UPSERT)\b/gi;
const dqlRegex = /\b(SELECT)\b/gi;
const noRowsMsg = "No rows returned.";
const fatalMsg = "Failed to initialize database. Check console logs for error.";

export class SQLExample extends HTMLElement {
  #state: Map<string, any>;
  #bindings: Map<string, HTMLElement[]>;
  db: Db | null;

  constructor() {
    super();
  }

  async connectedCallback() {
    this.initBinds();
    this.initState();
    this.initButtons();
    this.initCodeEditor();
    await this.init();
  }

  /**
      initState sets initial state using the supplied data in the data-state attribute.
  */
  initState() {
    const outer = this;
    const handler: ProxyHandler<Map<string, any>> = {
      get: function (target: Map<string, any>, prop: string | symbol) {
        if (prop == "set") {
          return function (key: string, value: any) {
            const res = target.set(key, value);
            outer.updateBinds(key);
            return res;
          };
        }
        const value = target[prop as any];
        return typeof value === "function" ? value.bind(target) : value;
      },
    };

    this.#state = new Proxy(new Map<string, any>(), handler);

    const state = this.dataset?.state;
    if (state === undefined) return;
    const obj = JSON.parse(state) as Object;
    for (let [key, value] of Object.entries(obj)) {
      this.#state.set(key, value);
    }
  }

  /**
      initBinds sets up read bindings between elements and state.
      TODO: Set up two-way bindings (input event listener).
  */
  initBinds() {
    this.#bindings = new Map<string, HTMLElement[]>();
    const descendants = this.querySelectorAll("*");
    for (const desc of descendants) {
      const elem = desc as HTMLElement;
      const binding = elem.dataset?.bind;
      if (binding !== undefined) {
        if (!this.#bindings.has(binding)) {
          this.#bindings.set(binding, []);
        }
        this.#bindings.get(binding)?.push(elem);
      }
    }
  }

  /**
      updateBinds iterates through all bindings for a particular state member and updates the element's contents.
  */
  updateBinds(stateKey: string) {
    const elems = this.#bindings.get(stateKey);
    if (elems === undefined) return;
    const stateValue = this.#state.get(stateKey);
    if (stateValue === undefined) return;
    for (const elem of elems) {
      if (
        elem instanceof HTMLTextAreaElement ||
        elem instanceof HTMLInputElement ||
        elem instanceof HTMLSelectElement
      ) {
        elem.value = String(stateValue);
      } else {
        elem.innerText = String(stateValue);
      }
    }
  }

  /**
      initButtons initializes event handlers for the action buttons.
  */
  initButtons() {
    const run = this.querySelector("#run");
    run?.addEventListener("click", this.run);
    const reset = this.querySelector("#reset");
    reset?.addEventListener("click", this.reset);
  }

  /**
      initCodeEditor adds an event handler to sync the editable
      textarea with the syntax-highlighted code block.
  */
  initCodeEditor() {
    const textarea = this.querySelector("textarea");
    const code = this.querySelector("code");
    const syncEditor = () => {
      if (textarea != null && code != null) {
        // Set the state to the textarea text.
        this.#state.set("stmt", textarea.value);

        // Sync code block with data source.
        code.innerText = textarea.value;

        // Auto-expand text area to fit.
        let repl = textarea.parentElement?.dataset.replicatedValue;
        if (repl) repl = textarea.value;

        // Re-highlight the code block.
        Prism.highlightElement(code);
      }
    };
    if (textarea != null && code != null) {
      textarea.addEventListener("input", (_: Event) => {
        syncEditor();
      });
      syncEditor();
    }
  }

  async init() {
    const schema = this.#state.get("schema");
    if (schema !== undefined) {
      try {
        this.db = await Db.create(String(schema));
      } catch (error) {
        console.error(error);
        this.#state.set("result", fatalMsg);
        return;
      }
    }
    this.run();
  }

  /** run() runs a series of SQL statements and returns information depending on the statement type.
      If the statement is a DML statement, the number of rows modified is returned.
      Otherwise, the row information from the final statement in the series is returned.
  */
  run() {
    if (this.db == null) return;
    const stmt = this.#state.get("stmt");
    if (stmt === undefined) return;
    try {
      switch (this.stmtType(stmt)) {
        case "dml":
          let modified = this.db.run(stmt);
          this.#state.set(
            "result",
            `${modified} ${this.pluralize("row", modified > 1 || modified == 0)} modified.`,
          );
          break;
        case "ddl":
        case "dql":
          let res = this.db.exec(stmt);
          if (res.length == 0) {
            this.#state.set("result", noRowsMsg);
            return;
          }
          this.#state.set(
            "result",
            MarkdownFormatter.fromResult(res[res.length - 1]).toString(),
          );
          break;
      }
    } catch (error) {
      this.#state.set("result", error.toString());
    }
  }

  /** reset() clears any changes to the originally loaded statment,
      reloads the database from its original schema,
      and runs the original statement again.
  */
  async reset() {
    if (this.db == null) return;
    this.db.close();
    this.db = null;
    const initial = this.#state.get("initial_stmt");
    if (initial !== undefined) {
      this.#state.set("stmt", initial);
    }
    await this.init();
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

  // pluralize does not work for all words. Used here for the word "row".
  pluralize(input: string, pluralize: boolean) {
    return pluralize ? input + "s" : input;
  }
}
