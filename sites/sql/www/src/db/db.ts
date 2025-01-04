import initSqlJs, {
  Database,
  QueryExecResult,
  SqlJsStatic,
} from "sql.js/dist/sql-wasm.js";

export class Db {
  db: Database;
  private static SQL: SqlJsStatic;

  private constructor() {}

  static async create(schema?: string): Promise<Db> {
    const s = new Db();
    await s.init();
    if (schema !== undefined) {
      s.exec(schema);
    }
    return s;
  }

  // PROBLEM: Why do the tables stick around even after you call close() and init() again?
  private async init() {
    if (!Db.SQL) {
      const cfg = { locateFile: (file) => "assets/sql-wasm.wasm" };
      Db.SQL = await initSqlJs(cfg);
    }
    this.db = new Db.SQL.Database();
  }

  /** Executes a series of SQL statements against the loaded database.
   */
  exec(stmt: string): QueryExecResult[] {
    console.log(`exec ${stmt}`);
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

  close(): void {
    this.db.close();
  }
}
