package statements

import (
	"embed"
	"io/fs"
)

//go:embed *
var Stmts embed.FS

// MustSub wraps fs.Sub and panics on error.
// This is useful for partitioning the SQL statement directories within each topic.
func MustSub(dir string) fs.ReadFileFS {
	fsys, err := fs.Sub(Stmts, dir)
	if err != nil {
		panic(err)
	}
	return fsys.(fs.ReadFileFS)
}
