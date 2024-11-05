package main

import (
	"embed"
	"fmt"
	"net/http"

	"github.com/a-h/templ"
	select_query "soikke.li/byexample/sql/examples/select"
	where_query "soikke.li/byexample/sql/examples/where"
)

//go:embed assets/*
var assets embed.FS

func main() {
	index := index()
	http.Handle("/select", templ.Handler(select_query.Example()))
	http.Handle("/where", templ.Handler(where_query.Example()))
	http.Handle("/assets/", http.FileServer(http.FS(assets)))
	http.Handle("/", templ.Handler(index))
	fmt.Println("listening on 127.0.0.1:9000")
	err := http.ListenAndServe("127.0.0.1:9000", nil)
	panic(err)
}
