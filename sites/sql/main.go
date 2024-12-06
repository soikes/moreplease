package main

import (
	"flag"
	"fmt"
	"net/http"

	"soikke.li/moreplease/sites/sql/mux"
)

var dynamicFlag = flag.Bool("d", false, "dynamically render SQL examples per-request")

func main() {
	flag.Parse()
	var m *http.ServeMux
	var desc string
	if *dynamicFlag {
		desc = "dynamic"
		m = mux.NewDynamicMux()
	} else {
		desc = "static"
		m = mux.NewStaticMux()
	}
	addr := "127.0.0.1:9000"
	fmt.Printf("%s site listening at %s\n", desc, addr)
	err := http.ListenAndServe(addr, m)
	panic(err)
}
