// import Alpine from "alpinejs";
import { Db } from "../db/db";

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

function createExample(schema: string, stmt: string): Example {
  return {
    loading: false,
    fatal: false,
    result: "",
    schema: schema,
    initialStmt: stmt,
    stmt: stmt,
    db: null as Db | null,

    // init() is called automatically by alpine.js when this object is supplied into x-data: https://alpinejs.dev/directives/init#auto-evaluate-init-method
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
        this.result = JSON.stringify(res);
      } catch (error) {
        this.result = error.toString();
      }
    },

    reset() {
      this.stmt = this.initialStmt;
    },
  };
}

declare global {
  interface Window {
    createExample: typeof createExample;
  }
}
window.createExample = createExample;

// Alpine.data("example", createExample());
// document.addEventListener("DOMContentLoaded", function (event) {
//   Alpine.start();
// });
