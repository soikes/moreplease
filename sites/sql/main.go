package main

import (
	"flag"
	"fmt"
	"net/http"

	"soikke.li/moreplease/sites/sql/web"
)

var dynamicFlag = flag.Bool("d", false, "dynamically render SQL examples per-request")

func main() {
	flag.Parse()
	var mux *http.ServeMux
	var desc string
	if *dynamicFlag {
		desc = "dynamic"
		mux = web.NewDynamicMux()
	} else {
		desc = "static"
		mux = web.NewStaticMux()
	}
	addr := "127.0.0.1:9000"
	fmt.Printf("%s site listening at %s\n", desc, addr)
	err := http.ListenAndServe(addr, mux)
	panic(err)
}
