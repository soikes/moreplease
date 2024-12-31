import { Db } from "../db/db";
import { MarkdownFormatter } from "../db/formatter";

interface Example {
  loading: boolean;
  result: string;
  schema: string;
  initialStmt: string;
  stmt: string;
  db: Db | null;

  init(): Promise<void>;
  run(): void;
  reset(): void;
  isDML(stmt: string): boolean;
  pluralize(input: string, pluralize: boolean): string;
}

const dmlRegex = /\b(INSERT|UPDATE|DELETE|MERGE|UPSERT)\b/gi;
const noRowsMsg = "No rows returned.";
const fatalMsg = "Failed to initialize database. Check console logs for error.";

/** createExample uses a schema and an initial statement to initialize a new SQLite database in memory.
    @return {Example} An object literal because it is easier to work with in alpine.js.
 */
export function createExample(schema: string, stmt: string): Example {
  return {
    loading: false,
    result: "",
    schema: schema,
    initialStmt: stmt,
    stmt: stmt,
    db: null as Db | null,

    /** init() is called automatically by alpine.js when this object is supplied into x-data:
    https://alpinejs.dev/directives/init#auto-evaluate-init-method 
    */
    async init() {
      this.result = ``;
      this.loading = false;
      try {
        this.db = await Db.load(this.schema);
      } catch (error) {
        console.error(error);
        this.result = fatalMsg;
        return;
      }
      this.run();
    },

    run() {
      try {
        if (this.isDML(this.stmt)) {
          let modified = this.db.run(this.stmt);
          this.result = `${modified} ${this.pluralize("row", modified > 1)} modified.`;
        } else {
          let res = this.db.exec(this.stmt);
          if (res.length == 0) {
            this.result = noRowsMsg;
            return;
          }
          this.result = MarkdownFormatter.fromResult(res[0]).toString();
        }
      } catch (error) {
        this.result = error.toString();
      }
    },

    async reset() {
      await this.init();
      this.stmt = this.initialStmt;
      this.run();
    },

    /** isDML() returns true if the current statement is a DML (mutating) statement.
     */
    isDML(stmt: string) {
      if (stmt.match(dmlRegex) == null) {
        return false;
      }
      return true;
    },

    // Does not work for all words. Used for the word "row".
    pluralize(input: string, pluralize: boolean) {
      return pluralize ? input + "s" : input;
    },
  };
}
