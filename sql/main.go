package main

import (
	"embed"
	"net/http"

	"github.com/a-h/templ"
	select_query "soikke.li/byexample/sql/examples/select"
)

//go:embed assets/*
var assets embed.FS

func main() {
	index := index()
	select_query := select_query.Select()
	http.Handle("/select", templ.Handler(select_query))
	http.Handle("/assets/", http.FileServer(http.FS(assets)))
	http.Handle("/", templ.Handler(index))
	err := http.ListenAndServe("127.0.0.1:9000", nil)
	panic(err)
}
