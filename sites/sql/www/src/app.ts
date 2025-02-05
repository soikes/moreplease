import {
  startFadeIn,
  showJSRequiredElements,
  initFadeIn,
} from "../../../common/www/src/hooks";
import { SQLExample } from "./components/example.js";
import { Popout } from "./components/popout.js";
import { highlightAll, languages } from "prismjs";
import "prismjs/components/prism-sql";
import "htmx.org";

// Use custom syntax highlighting for SQLite, with some extra syntax for
// other engines when describing them.
languages.sql = {
  comment: {
    pattern: /(^|[^\\])(?:\/\*[\s\S]*?\*\/|(?:--|\/\/|#).*)/,
    lookbehind: !0,
  },
  variable: [
    { pattern: /@(["'`])(?:\\[\s\S]|(?!\1)[^\\])+\1/, greedy: !0 },
    /@[\w.$]+/,
  ],
  string: {
    pattern: /(^|[^@\\])("|')(?:\\[\s\S]|(?!\2)[^\\]|\2\2)*\2/,
    greedy: !0,
    lookbehind: !0,
  },
  identifier: {
    pattern: /(^|[^@\\])`(?:\\[\s\S]|[^`\\]|``)*`/,
    greedy: !0,
    lookbehind: !0,
    inside: { punctuation: /^`|`$/ },
  },
  function:
    /\b(?:abs|acos|acosh|asin|asinh|atan|atan2|atanh|avg|ceil|ceiling|changes|char|coalesce|concat|concat_ws|cos|cosh|count|date|datetime|degrees|dense_rank|exp|first_value|floor|format|glob|group_concat|hex|ifnull|iif|instr|json|jsonb|json_array|jsonb_array|json_array_length|json_error_position|json_extract|jsonb_extract|json_group_array|jsonb_group_array|json_group_object|jsonb_group_object|json_insert|jsonb_insert|json_object|jsonb_object|json_patch|jsonb_patch|json_pretty|json_quote|json_remove|jsonb_remove|json_replace|jsonb_replace|json_set|jsonb_set|json_tree|json_type|json_valid|julianday|lag|last_insert_rowid|last_value|lead|length|like|likelihood|likely|ln|load_extension|log|log10|log2|lower|ltrim|max|min|mod|nth_value|ntile|nullif|octet_length|percent_rank|pi|pow|power|pragma_table_info|pragma_table_xinfo|printf|quote|radians|random|randomblob|rank|replace|round|row_number|rtrim|sign|sin|sinh|soundex|sqlite_compileoption_get|sqlite_compileoption_used|sqlite_offset|sqlite_source_id|sqlite_version|sqrt|strftime|string_agg|substr|substring|sum|tan|tanh|timediff|time|total|total_changes|trim|trunc|typeof|unhex|unicode|unixepoch|unlikely|upper|zeroblob)(?=\s*\()/i,
  keyword:
    /\b(?:ABORT|ACTION|ADD|AFTER|ALL|ALTER|ANALYZE|ANY|AS|ASC|ATTACH|AUTOINCREMENT|BEFORE|BEGIN|BIGINT|BINARY|BLOB|BOOLEAN|BY|CASCADE|CASE|CAST|CHECK|COLLATE|COLUMN|COMMIT|CONFLICT|CONSTRAINT|CREATE|CROSS|CURRENT_DATE|CURRENT_TIME|CURRENT_TIMESTAMP|DATABASE|DATE|DATETIME|DECIMAL|DEFAULT|DEFERRABLE|DEFERRED|DELETE|DESC|DESCRIBE|DETACH|DISTINCT|DOUBLE PRECISION|DROP|EACH|ELSE|END|ESCAPE|EXCEPT|EXCLUSIVE|EXISTS|EXPLAIN|FAIL|FETCH|FIRST|FLOAT|FOR|FOREIGN|FROM|FULL|FUNCTION|GROUP|HAVING|IF|IGNORE|IMMEDIATE|INDEX|INDEXED|INITIALLY|INNER|INSERT|INSTEAD|INT|INTEGER|INTERSECT|INTO|ISNULL|JOIN|JSON|KEY|LEFT|LIMIT|MEDIUMINT|MINUS|NATURAL|NO|NOCASE|NOTNULL|NULL|NUMERIC|OF|OFFSET|ON|ORDER|OUTER|PLAN|PRAGMA|PRIMARY|QUERY|RAISE|REAL|RECURSIVE|REFERENCES|REINDEX|RELEASE|RENAME|REPLACE|RESTRICT|RETURNS|RETURNING|RIGHT|ROLLBACK|ROW|ROWNUM|RTRIM|SAVEPOINT|SELECT|SET|SMALLINT|STORED|TABLE|TEMP|TEMPORARY|TEXT|THEN|TIME|TIMESTAMP|TINYINT|TO|TOP|TRANSACTION|TRIGGER|UNION|UNIQUE|UPDATE|USING|UUID|VACUUM|VALUES|VARBINARY|VARCHAR|VIEW|VIRTUAL|WHEN|WHERE|WITH|WITHOUT|XML)(?=\b)/i,
  boolean: /\b(?:FALSE|NULL|TRUE)\b/i,
  number: /\b0x[\da-f]+\b|\b\d+(?:\.\d*)?|\B\.\d+\b/i,
  operator:
    /[-+*\/=%&\|~]|!=?|<<|>>|<(?:=>?|<|>)?|>[>=]?|\b(?:AND|BETWEEN|IN|IS|LIKE|NOT|OR|GLOB|MATCH|REGEXP)\b/i,
  punctuation: /[;[\]()`,.]/,
};

document.addEventListener("DOMContentLoaded", () => {
  showJSRequiredElements();
  initFadeIn();

  requestAnimationFrame(() => {
    highlightAll(false, () => {
      startFadeIn();
    });
  });

  window.customElements.define("sql-example", SQLExample);
  window.customElements.define("popout-doc", Popout);
});
