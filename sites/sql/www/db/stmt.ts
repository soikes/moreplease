import initSqlJs, { Database, QueryExecResult } from "sql.js/dist/sql-wasm.js";

export class Stmt {
  db: Database | undefined;

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

  static async load(schema: string): Promise<Stmt> {
    const s = new Stmt();
    await s.init();
    s.exec(schema);
    return s;
  }

  exec(stmt: string): QueryExecResult[] | undefined {
    const rows = this.db?.exec(stmt);
    // this.db?.handleError(); // Don't know how this works.
    return rows;
  }

  private async fetchStmt(path: string): Promise<string> {
    const rsp = await fetch(path);
    if (!rsp.ok) {
      throw new Error(rsp.statusText);
    }
    return rsp.text();
  }

  private async init() {
    if (this.db != undefined) {
      return;
    }
    const cfg = { locateFile: (file) => "assets/sql-wasm.wasm" };
    try {
      const SQL = await initSqlJs(cfg);
      this.db = new SQL.Database();
    } catch (error) {
      console.error(
        "failed to initialize sqlite: ${error}; sql examples will be read-only.",
      );
    }
  }
}

declare global {
  interface Window {
    Stmt: typeof Stmt;
  }
}

window.Stmt = Stmt;
