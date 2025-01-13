import { Db } from "../db/db";
import { MarkdownFormatter } from "../db/formatter";

type stmtType = "ddl" | "dml" | "dql";

interface Example {
  loading: boolean;
  result: string;
  schema: string | undefined;
  initialStmt: string;
  stmt: string;
  db: Db | null;

  init(): Promise<void>;
  run(): void;
  reset(): void;
  stmtType(stmt: string): stmtType;
  pluralize(input: string, pluralize: boolean): string;
}

const ddlRegex = /\b(CREATE TABLE|ALTER TABLE|DROP TABLE)\b/gi;
const dmlRegex =
  /\b(?![\s\S]*RETURNING)[\s\S]*(INSERT|UPDATE|DELETE|MERGE|UPSERT)\b/gi;
const dqlRegex = /\b(SELECT)\b/gi;
const noRowsMsg = "No rows returned.";
const fatalMsg = "Failed to initialize database. Check console logs for error.";

/** createExample uses a schema and an initial statement to initialize a new SQLite database in memory.
    @return {Example} An object literal because it is easier to work with in alpine.js.
 */
export function createExample(
  schema: string,
  stmt: string,
  result: string,
): Example {
  return {
    loading: false,
    result: result,
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
        this.db = await Db.create(this.schema);
      } catch (error) {
        console.error(error);
        this.result = fatalMsg;
        return;
      }
      this.run();
    },

    /** run() runs a series of SQL statements and returns information depending on the statement type.
    If the statement is a DML statement, the number of rows modified is returned.
    Otherwise, the row information from the final statement in the series is returned.
    */
    run() {
      try {
        switch (this.stmtType(this.stmt)) {
          case "dml":
            let modified = this.db.run(this.stmt);
            this.result = `${modified} ${this.pluralize("row", modified > 1 || modified == 0)} modified.`;
            break;
          case "ddl":
          case "dql":
            let res = this.db.exec(this.stmt);
            if (res.length == 0) {
              this.result = noRowsMsg;
              return;
            }
            this.result = MarkdownFormatter.fromResult(
              res[res.length - 1],
            ).toString();
            break;
        }
      } catch (error) {
        this.result = error.toString();
      }
    },

    async reset() {
      this.db.close();
      this.db = null;
      this.stmt = this.initialStmt;
      await this.init();
    },

    stmtType(stmt: string) {
      if (stmt.match(dmlRegex) !== null) {
        return "dml";
      }
      if (stmt.match(ddlRegex) !== null) {
        return "ddl";
      }
      return "dql";
    },

    // Does not work for all words. Used for the word "row".
    pluralize(input: string, pluralize: boolean) {
      return pluralize ? input + "s" : input;
    },
  };
}
