package db

import (
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
func (c *Config) Query(stmts []string, allowErrors ...bool) (result string, err error) {
	var allowErrs bool
	if len(allowErrors) > 0 {
		allowErrs = allowErrors[0]
	}
	db, err := sql.Open("sqlite3", "")
	if err != nil {
		return "", err
	}
	if c.SchemaPath != "" {
		src, err := c.SQLFiles.ReadFile(c.SchemaPath)
		if err != nil {
			return "", err
		}
		schema := strings.TrimSpace(string(src))
		_, err = db.Exec(schema)
		if err != nil {
			return "", err
		}
	}
	for i, stmt := range stmts {
		// Execute the first statements without results.
		if i != len(stmts)-1 {
			_, err = db.Exec(stmt)
			if err != nil {
				if allowErrs {
					continue
				}
				return
			}
		}
		// Get the results from the last statment.
		cols, rows, err := query(db, stmt)
		if err != nil {
			if allowErrs {
				return err.Error(), nil
			}
			return "", err
		}
		f := MarkdownFormatter{Columns: cols, Rows: rows}
		result = fmt.Sprintf("%s", f)
	}
	return
}

// QueryFile runs the SQL statements from file located at path in SQLFiles and returns the results of the last statement to execute in a markdown-formatted table.
// Multiple statements in a file can be separated by semicolon. For this reason, ONLY SUPPLY TRUSTED INPUT.
func (c *Config) QueryFile(path string, allowErrors ...bool) (string, error) {
	src, err := c.SQLFiles.ReadFile(c.SchemaPath)
	if err != nil {
		return "", err
	}
	stmts := getStatements(strings.TrimSpace(string(src)))
	return c.Query(stmts, allowErrors...)
}

func (c *Config) MustQueryFile(path string, allowErrors ...bool) string {
	res, err := c.QueryFile(path, allowErrors...)
	if err != nil {
		panic(err)
	}
	return res
}

// MustReadFile returns the contents of a single SQL file.
// Useful for displaying a statement without executing it.
func (c *Config) MustReadFile(path string) string {
	src, err := c.SQLFiles.ReadFile(c.SchemaPath)
	if err != nil {
		panic(err)
	}
	return strings.TrimSpace(string(src))
}

func getStatements(stmts string) []string {
	s := strings.Split(stmts, ";")
	var out []string
	for _, stmt := range s {
		out = append(out, strings.TrimSpace(stmt))
	}
	return out
}

func query(db *sql.DB, stmt string) (cols []string, rows [][]string, err error) {
	r, err := db.Query(stmt)
	if err != nil {
		return nil, nil, err
	}
	defer r.Close()
	cols, err = r.Columns()
	if err != nil {
		return nil, nil, err
	}
	rows = [][]string{}
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
	return
}
