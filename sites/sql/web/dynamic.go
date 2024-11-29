package web

import (
	"net/http"

	"github.com/a-h/templ"

	"soikke.li/moreplease/sites/sql/assets"

	aggregate_functions_topic "soikke.li/moreplease/sites/sql/pages/aggregate_functions"
	case_topic "soikke.li/moreplease/sites/sql/pages/case"
	data_types_topic "soikke.li/moreplease/sites/sql/pages/data_types"
	functions_topic "soikke.li/moreplease/sites/sql/pages/functions"
	group_by_topic "soikke.li/moreplease/sites/sql/pages/group_by"
	index "soikke.li/moreplease/sites/sql/pages/index"
	join_topic "soikke.li/moreplease/sites/sql/pages/join"
	limit_topic "soikke.li/moreplease/sites/sql/pages/limit"
	order_by_topic "soikke.li/moreplease/sites/sql/pages/order_by"
	select_topic "soikke.li/moreplease/sites/sql/pages/select"
	union_and_set_operators_topic "soikke.li/moreplease/sites/sql/pages/union_and_set_operators"
	where_topic "soikke.li/moreplease/sites/sql/pages/where"
)

func NewDynamicMux() *http.ServeMux {
	mux := http.NewServeMux()
	mux.Handle("/aggregate_functions", templ.Handler(aggregate_functions_topic.Topic()))
	mux.Handle("/case", templ.Handler(case_topic.Topic()))
	mux.Handle("/data_types", templ.Handler(data_types_topic.Topic()))
	mux.Handle("/functions", templ.Handler(functions_topic.Topic()))
	mux.Handle("/group_by", templ.Handler(group_by_topic.Topic()))
	mux.Handle("/join", templ.Handler(join_topic.Topic()))
	mux.Handle("/limit", templ.Handler(limit_topic.Topic()))
	mux.Handle("/order_by", templ.Handler(order_by_topic.Topic()))
	mux.Handle("/select", templ.Handler(select_topic.Topic()))
	mux.Handle("/union_and_set_operators", templ.Handler(union_and_set_operators_topic.Topic()))
	mux.Handle("/where", templ.Handler(where_topic.Topic()))

	fsys := AssetsFS{assets.Assets}
	mux.Handle("/assets/", http.StripPrefix("/assets/", http.FileServerFS(fsys)))
	mux.Handle("/", templ.Handler(index.Index()))
	return mux
}
