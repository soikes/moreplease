package main

import (
	"embed"
	"fmt"
	"net/http"

	"github.com/a-h/templ"
	coalesce_stmt "soikke.li/moreplease/sites/sql/topics/coalesce"
	functions_topic "soikke.li/moreplease/sites/sql/topics/functions"
	join_stmt "soikke.li/moreplease/sites/sql/topics/join"
	order_by_stmt "soikke.li/moreplease/sites/sql/topics/order_by"
	select_stmt "soikke.li/moreplease/sites/sql/topics/select"
	where_stmt "soikke.li/moreplease/sites/sql/topics/where"
)

//go:embed assets/*
var assets embed.FS

func main() {
	index := index()
	http.Handle("/functions", templ.Handler(functions_topic.Topic()))
	http.Handle("/order_by", templ.Handler(order_by_stmt.Topic()))
	http.Handle("/join", templ.Handler(join_stmt.Topic()))
	http.Handle("/coalesce", templ.Handler(coalesce_stmt.Topic()))
	http.Handle("/select", templ.Handler(select_stmt.Topic()))
	http.Handle("/where", templ.Handler(where_stmt.Topic()))
	http.Handle("/assets/", http.FileServer(http.FS(assets)))
	http.Handle("/", templ.Handler(index))
	fmt.Println("listening on 127.0.0.1:9000")
	err := http.ListenAndServe("127.0.0.1:9000", nil)
	panic(err)
}
