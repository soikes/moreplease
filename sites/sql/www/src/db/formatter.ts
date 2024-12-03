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
    widths = this.columns.map((col) => col.length + 2); // Add two - we need at least one space on either side.
    this.rows.map((row) =>
      row.map((data, i) => (widths[i] = Math.max(widths[i], data.length + 2))),
    );

    let output = "";

    // Populate the column names.
    this.columns.map((col, i) => {
      let remaining = widths[i] - col.length;
      let space = remaining / 2;
      let extra = remaining % 2;
      output += verticalSeparator;
      output += " ".repeat(space);
      output += col;
      output += " ".repeat(space + extra);
      // if (i < this.columns.length - 1) {
      //   output += verticalSeparator;
      // }
    });
    output += verticalSeparator;
    output += "\n";

    // Create a column header separator.
    this.columns.map((col, i) => {
      output += verticalSeparator;
      for (let j = 0; j < widths[i]; j++) {
        output += horizontalSeparator;
      }
      // if (i < this.columns.length - 1) {
      //   output += verticalSeparator;
      // }
    });
    output += verticalSeparator;
    output += "\n";

    // Add the rows.
    for (let row of this.rows) {
      row.map((data, i) => {
        let remaining = widths[i] - data.length - 1; // Left justify the data.
        output += verticalSeparator;
        output += " ";
        output += data;
        output += " ".repeat(remaining);
        // if (i < row.length - 1) {
        //   output += verticalSeparator;
        // }
      });
      output += verticalSeparator;
      output += "\n";
    }

    return output;
  }
}
