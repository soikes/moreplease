package main

import (
	"fmt"
	"net/http"

	"soikke.li/moreplease/sites/sql/web"
)

func main() {
	mux := web.NewDynamicMux()
	addr := "127.0.0.1:9000"
	fmt.Printf("dynamic site listening at %s\n", addr)
	err := http.ListenAndServe(addr, mux)
	panic(err)
}
