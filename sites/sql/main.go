package main

import (
	"embed"
	"fmt"
	"net/http"

	"github.com/a-h/templ"

	aggregate_functions_topic "soikke.li/moreplease/sites/sql/topics/aggregate_functions"
	case_topic "soikke.li/moreplease/sites/sql/topics/case"
	coalesce_topic "soikke.li/moreplease/sites/sql/topics/coalesce"
	data_types_topic "soikke.li/moreplease/sites/sql/topics/data_types"
	functions_topic "soikke.li/moreplease/sites/sql/topics/functions"
	group_by_topic "soikke.li/moreplease/sites/sql/topics/group_by"
	join_topic "soikke.li/moreplease/sites/sql/topics/join"
	limit_topic "soikke.li/moreplease/sites/sql/topics/limit"
	order_by_topic "soikke.li/moreplease/sites/sql/topics/order_by"
	select_topic "soikke.li/moreplease/sites/sql/topics/select"
	union_and_set_operators_topic "soikke.li/moreplease/sites/sql/topics/union_and_set_operators"
	where_topic "soikke.li/moreplease/sites/sql/topics/where"
)

//go:embed assets/*
var assets embed.FS

func main() {
	index := index()
	http.Handle("/aggregate_functions", templ.Handler(aggregate_functions_topic.Topic()))
	http.Handle("/case", templ.Handler(case_topic.Topic()))
	http.Handle("/coalesce", templ.Handler(coalesce_topic.Topic()))
	http.Handle("/data_types", templ.Handler(data_types_topic.Topic()))
	http.Handle("/functions", templ.Handler(functions_topic.Topic()))
	http.Handle("/group_by", templ.Handler(group_by_topic.Topic()))
	http.Handle("/join", templ.Handler(join_topic.Topic()))
	http.Handle("/limit", templ.Handler(limit_topic.Topic()))
	http.Handle("/order_by", templ.Handler(order_by_topic.Topic()))
	http.Handle("/select", templ.Handler(select_topic.Topic()))
	http.Handle("/union_and_set_operators", templ.Handler(union_and_set_operators_topic.Topic()))
	http.Handle("/where", templ.Handler(where_topic.Topic()))

	http.Handle("/assets/", http.FileServer(http.FS(assets)))
	http.Handle("/", templ.Handler(index))
	fmt.Println("listening on 127.0.0.1:9000")
	err := http.ListenAndServe("127.0.0.1:9000", nil)
	panic(err)
}
