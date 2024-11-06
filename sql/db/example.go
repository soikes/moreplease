package db

import (
	"database/sql"

	_ "github.com/mattn/go-sqlite3"
)

func RunExample(schema string, statement string) (cols []string, rows [][]string, err error) {
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
