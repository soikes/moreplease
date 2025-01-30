package db

import (
	"context"
	"database/sql"
	"fmt"
	"io/fs"
	"strings"

	_ "github.com/mattn/go-sqlite3"
)

// Config is a SQL database configuration.
type Config struct {
	SQLFiles   fs.ReadFileFS
	SchemaPath string
}

// Query executes the SQL statements in stmts and returns a markdown-formatted table of the final statement to execute.
// Query creates a new temporary database each time it is called to isolate examples from each other.
// The schema must execute if it exists. If allowErrors is true, statements that cause errors will be allowed to run and the final statement will return any errors as a string.
// This is to facilitate examples that teach about syntax or execution errors in SQL.
func (c *Config) Query(ctx context.Context, stmts []string, allowErrors ...bool) (string, error) {
	var allowErrs bool
	if len(allowErrors) > 0 {
		allowErrs = allowErrors[0]
	}
	db, err := sql.Open("sqlite3", "")
	if err != nil {
		return "", err
	}
	defer db.Close()
	tx, err := db.BeginTx(ctx, &sql.TxOptions{Isolation: sql.LevelSerializable})
	if err != nil {
		return "", err
	}
	defer tx.Rollback()

	if c.SchemaPath != "" {
		src, err := c.SQLFiles.ReadFile(c.SchemaPath)
		if err != nil {
			return "", err
		}
		schema := strings.TrimSpace(string(src))
		_, err = tx.ExecContext(ctx, schema)
		if err != nil {
			return "", err
		}
	}
	var result string
	for i, stmt := range stmts {
		r, err := tx.QueryContext(ctx, stmt)
		if err != nil {
			if allowErrs {
				return err.Error(), nil
			}
			return "", err
		}
		defer r.Close()
		cols, rows, err := getRowsWithColumns(r)
		if err != nil {
			return "", err
		}

		f := MarkdownFormatter{Columns: cols, Rows: rows}
		if i == len(stmts)-1 {
			result = fmt.Sprintf("%s", f)
		}
	}
	err = tx.Commit()
	return result, err
}

// QueryFile runs the SQL statements from file located at path in SQLFiles and returns the results of the last statement to execute in a markdown-formatted table.
// Multiple statements in a file can be separated by semicolon. For this reason, ONLY SUPPLY TRUSTED INPUT.
func (c *Config) QueryFile(ctx context.Context, path string, allowErrors ...bool) (string, error) {
	src, err := readFile(c.SQLFiles, path)
	if err != nil {
		return "", err
	}
	stmts := splitStatements(strings.TrimSpace(string(src)))
	return c.Query(ctx, stmts, allowErrors...)
}

func (c *Config) MustQueryFile(ctx context.Context, path string, allowErrors ...bool) string {
	res, err := c.QueryFile(ctx, path, allowErrors...)
	if err != nil {
		panic(err)
	}
	return res
}

// MustReadFile returns the contents of a single SQL file.
// Useful for displaying a statement without executing it.
func (c *Config) MustReadFile(path string) string {
	src, err := c.SQLFiles.ReadFile(path)
	if err != nil {
		panic(err)
	}
	return strings.TrimSpace(string(src))
}

func readFile(fsys fs.ReadFileFS, path string) (string, error) {
	src, err := fsys.ReadFile(path)
	if err != nil {
		return "", err
	}
	return strings.TrimSpace(trimSQLComments(string(src))), nil
}

func trimSQLComments(in string) string {
	// Block comments
	var out strings.Builder
	insideBlock := false
	insideInline := false
	for i, char := range in {
		if !insideBlock && !insideInline {
			if char == '/' {
				if i < len(in)-2 {
					if in[i+1] == '*' {
						insideBlock = true
						continue
					}
				}
			}
			if char == '-' {
				if i < len(in)-2 {
					if in[i+1] == '-' {
						insideInline = true
						continue
					}
				}
			}
			out.WriteRune(char)
		}
		if insideBlock {
			if char == '/' {
				if i > 1 {
					if in[i-1] == '*' {
						insideBlock = false
						continue
					}
				}
			}
		} else {
			if char == '\n' {
				insideInline = false
				continue
			}
		}
	}
	return out.String()
}

func splitStatements(stmts string) []string {
	s := strings.SplitAfter(stmts, ";")
	var out []string
	for _, stmt := range s {
		if stmt != "" {
			out = append(out, strings.TrimSpace(stmt))
		}
	}
	return out
}

func getRowsWithColumns(r *sql.Rows) ([]string, [][]string, error) {
	cols, err := r.Columns()
	if err != nil {
		return nil, nil, err
	}
	rows := [][]string{}
	for r.Next() {
		vals := make([]sql.NullString, len(cols))
		ptrs := make([]interface{}, len(cols))
		for i := range vals {
			ptrs[i] = &vals[i]
		}
		err = r.Scan(ptrs...)
		if err != nil {
			return nil, nil, err
		}
		var stringed []string
		for _, val := range vals {
			if val.Valid {
				stringed = append(stringed, val.String)
			} else {
				stringed = append(stringed, "NULL")
			}
		}
		rows = append(rows, stringed)
	}
	return cols, rows, nil
}
