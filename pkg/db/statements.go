package db

import (
	"database/sql"
	"fmt"
	"io/fs"
	"strings"

	_ "github.com/mattn/go-sqlite3"
)

// Statements is a collection of SQL statements that are executable with a given schema.
type Statements struct {
	Files      fs.ReadFileFS
	SchemaPath string
}

func (s *Statements) ExecFile(path string) string {
	cols, rows, err := s.run(s.read(path))
	if err != nil {
		panic(err)
	}
	f := MarkdownFormatter{Columns: cols, Rows: rows}
	return fmt.Sprintf("%s", f)
}

func (s *Statements) Exec(stmt string) string {
	cols, rows, err := s.run(stmt)
	if err != nil {
		panic(err)
	}
	f := MarkdownFormatter{Columns: cols, Rows: rows}
	return fmt.Sprintf("%s", f)
}

// From returns the contents of a single SQL file.
func (s *Statements) From(path string) string {
	return s.read(path)
}

func (s *Statements) run(statement string) (cols []string, rows [][]string, err error) {
	db, err := sql.Open("sqlite3", "")
	if err != nil {
		return nil, nil, err
	}
	defer db.Close()

	if s.SchemaPath != "" {
		schema := s.read(s.SchemaPath)
		_, err = db.Exec(schema)
		if err != nil {
			return nil, nil, err
		}
	}

	r, err := db.Query(statement)
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
		err := r.Scan(ptrs...)
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

func (s *Statements) read(path string) string {
	src, err := s.Files.ReadFile(path)
	if err != nil {
		panic(err)
	}
	return strings.TrimSpace(string(src))
}
