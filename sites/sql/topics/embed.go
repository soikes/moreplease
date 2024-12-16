package topics

import (
	"embed"
	"io/fs"
)

//go:embed embed
var stmts embed.FS

func mustSub(dir string) fs.ReadFileFS {
	f, err := fs.Sub(stmts, dir)
	if err != nil {
		panic(err)
	}
	return f.(fs.ReadFileFS)
}
