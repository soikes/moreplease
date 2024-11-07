package db

import (
	"database/sql"
	"fmt"
	"io/fs"

	_ "github.com/mattn/go-sqlite3"
)

type Statements struct {
	Sources fs.ReadFileFS
}

func (s *Statements) Exec(path string) string {
	cols, rows, err := run(s.read("sql/schema.sql"), s.read(path))
	if err != nil {
		panic(err)
	}
	f := MarkdownFormatter{Columns: cols, Rows: rows}
	return fmt.Sprintf("%s", f)
}

func (s *Statements) ExecString(sql string) string {
	cols, rows, err := run(s.read("sql/schema.sql"), sql)
	if err != nil {
		panic(err)
	}
	f := MarkdownFormatter{Columns: cols, Rows: rows}
	return fmt.Sprintf("%s", f)
}

func run(schema string, statement string) (cols []string, rows [][]string, err error) {
	db, err := sql.Open("sqlite3", "")
	if err != nil {
		return nil, nil, err
	}
	defer db.Close()

	_, err = db.Exec(schema)
	if err != nil {
		return nil, nil, err
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
		vals := make([]string, len(cols))
		ptrs := make([]interface{}, len(cols))
		for i := range vals {
			ptrs[i] = &vals[i]
		}
		err := r.Scan(ptrs...)
		if err != nil {
			return nil, nil, err
		}
		rows = append(rows, vals)
	}
	return
}

func (s *Statements) read(path string) string {
	src, err := s.Sources.ReadFile(path)
	if err != nil {
		panic(err)
	}
	return string(src)
}
