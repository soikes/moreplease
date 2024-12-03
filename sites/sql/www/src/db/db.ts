import initSqlJs, { Database, QueryExecResult } from "sql.js/dist/sql-wasm.js";

export class Db {
  db: Database;

  private constructor() {}

  // TODO: Also could load the schema from a string because templ can supply it up front.
  // static async load(schemaPath: string): Promise<Stmt> {
  //   const s = new Stmt();
  //   await s.init();
  //   const schema = await s.fetchStmt(schemaPath);
  //   console.log(schema);
  //   s.exec(schema);
  //   return s;
  // }

  static async load(schema: string): Promise<Db> {
    const s = new Db();
    await s.init();
    s.execAll(schema);
    return s;
  }

  private async init() {
    const cfg = { locateFile: (file) => "assets/sql-wasm.wasm" };
    const SQL = await initSqlJs(cfg);
    this.db = new SQL.Database();
  }

  // Executes a single SQL query against the loaded database.
  exec(stmt: string): QueryExecResult {
    const rows = this.db.exec(stmt)[0];
    // this.db?.handleError(); // Don't know how this works.
    return rows;
  }

  execAll(stmts: string): QueryExecResult[] {
    return this.db.exec(stmts);
  }

  private async fetchStmt(path: string): Promise<string> {
    const rsp = await fetch(path);
    if (!rsp.ok) {
      throw new Error(rsp.statusText);
    }
    return rsp.text();
  }
}
