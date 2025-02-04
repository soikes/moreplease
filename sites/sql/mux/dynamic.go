package mux

// DEPRECATED: Topics are pre-generated and served as static HTML files.
// NewDynamicMux Creates a multiplexer that runs and renders SQLite statements on the *server* on every request.
// func NewDynamicMux() *http.ServeMux {
// 	mux := http.NewServeMux()
// 	mux.Handle("/aggregate_functions", templ.Handler(topics.AggregateFunctions()))
// 	mux.Handle("/case", templ.Handler(topics.Case()))
// 	mux.Handle("/data_types", templ.Handler(topics.DataTypes()))
// 	mux.Handle("/functions", templ.Handler(topics.Functions()))
// 	mux.Handle("/group_by", templ.Handler(topics.GroupBy()))
// 	mux.Handle("/join", templ.Handler(topics.Join()))
// 	mux.Handle("/order_by", templ.Handler(topics.OrderBy()))
// 	mux.Handle("/select", templ.Handler(topics.Select()))
// 	mux.Handle("/union_and_set_operators", templ.Handler(topics.UnionAndSetOperators()))
// 	mux.Handle("/where", templ.Handler(topics.Where()))

// 	fsys := assets.AssetsFS{FS: sqlAssets.Assets}
// 	mux.Handle("/assets/", http.StripPrefix("/assets/", http.FileServerFS(fsys)))
// 	mux.Handle("/", templ.Handler(topics.Index()))
// 	return mux
// }
