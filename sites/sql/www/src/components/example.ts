import { Db } from "../db/db";
import { MarkdownFormatter } from "../db/formatter";

interface Example {
  loading: boolean;
  fatal: boolean;
  result: string;
  schema: string;
  initialStmt: string;
  stmt: string;
  db: Db | null;

  init(): Promise<void>;
  run(): void;
  reset(): void;
}

/** createExample uses a schema and an initial statement to initialize a new SQLite database in memory.
    @return {Example} An object literal because it is easier to work with in alpine.js.
 */
function createExample(schema: string, stmt: string): Example {
  return {
    loading: false,
    fatal: false,
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
        this.fatal = true;
        return;
      }
      this.run();
    },

    run() {
      try {
        let res = this.db.exec(this.stmt);
        if (res.length == 0) {
          this.result = "No rows returned.";
          return;
        }
        this.result = MarkdownFormatter.fromResult(res[0]).toString();
      } catch (error) {
        this.result = error.toString();
      }
    },

    reset() {
      this.stmt = this.initialStmt;
      this.run();
    },
  };
}

declare global {
  interface Window {
    createExample: typeof createExample;
  }
}
window.createExample = createExample;
