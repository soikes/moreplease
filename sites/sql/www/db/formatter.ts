import { QueryExecResult } from "sql.js";

export class MarkdownFormatter {
  columns: string[];
  rows: string[][];

  private constructor() {}

  static fromResult(result: QueryExecResult): MarkdownFormatter {
    var mf = new MarkdownFormatter();
    mf.columns = result.columns;
    mf.rows = result.values.map((row) =>
      row.map((value) => (value === null ? "NULL" : value.toString())),
    );
    return mf;
  }

  toString(): string {
    const verticalSeparator = `|`;
    const horizontalSeparator = `-`;

    // Find the longest datum per column to set an appropriate width for each column.
    var widths: number[];
    widths = this.columns.map((col) => col.length + 2);
    widths = this.rows.map((row) =>
      row.reduce((max, value) => Math.max(max, value.length + 2), 0),
    );

    return widths.toString();
  }
}
