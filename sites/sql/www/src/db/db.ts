import initSqlJs, { Database, QueryExecResult } from "sql.js/dist/sql-wasm.js";

export class Db {
  db: Database;

  private constructor() {}

  static async load(schema: string): Promise<Db> {
    const s = new Db();
    await s.init();
    s.exec(schema);
    return s;
  }

  private async init() {
    const cfg = { locateFile: (file) => "assets/sql-wasm.wasm" };
    const SQL = await initSqlJs(cfg);
    this.db = new SQL.Database();
  }

  /** Executes a series of SQL statements against the loaded database.
   */
  exec(stmt: string): QueryExecResult[] {
    const rows = this.db.exec(stmt);
    return rows;
  }

  /** Runs one SQL statement against the loaded database and
      returns the number of rows modified.
   */
  run(stmt: string): number {
    this.db.run(stmt);
    return this.db.getRowsModified();
  }
}
