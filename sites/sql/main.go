package main

import (
	"flag"
	"fmt"
	"net/http"

	"soikke.li/moreplease/sites/sql/highlight"
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
	ttt := `SELECT name, address FROM table WHERE 1 = 2 AND 3 % 4 = 7 ORDER BY name ASC;`
	fmt.Println(highlight.Block(ttt))
	err := http.ListenAndServe(addr, m)
	panic(err)
}
