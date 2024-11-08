package main

import (
	"embed"
	"fmt"
	"net/http"

	"github.com/a-h/templ"
	coalesce_stmt "soikke.li/moreplease/sites/sql/examples/coalesce"
	join_stmt "soikke.li/moreplease/sites/sql/examples/join"
	select_stmt "soikke.li/moreplease/sites/sql/examples/select"
	where_stmt "soikke.li/moreplease/sites/sql/examples/where"
)

//go:embed assets/*
var assets embed.FS

func main() {
	index := index()
	http.Handle("/join", templ.Handler(join_stmt.Example()))
	http.Handle("/coalesce", templ.Handler(coalesce_stmt.Example()))
	http.Handle("/select", templ.Handler(select_stmt.Example()))
	http.Handle("/where", templ.Handler(where_stmt.Example()))
	http.Handle("/assets/", http.FileServer(http.FS(assets)))
	http.Handle("/", templ.Handler(index))
	fmt.Println("listening on 127.0.0.1:9000")
	err := http.ListenAndServe("127.0.0.1:9000", nil)
	panic(err)
}
