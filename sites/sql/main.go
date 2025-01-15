package main

import (
	"flag"
	"log"
	"net/http"

	"soikke.li/moreplease/pkg/assets"
	"soikke.li/moreplease/pkg/web"
	sqlAssets "soikke.li/moreplease/sites/sql/assets"
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
	srv := web.NewServer()
	fd, err := assets.CSPFetchDirectives(sqlAssets.Assets)
	if err != nil {
		panic(err)
	}
	h := web.Headers{
		CSPFetchDirectives: fd,
	}
	handler := h.AddSecurityHeaders(m)
	srv.Handler = handler
	srv.Addr = addr
	log.Printf("%s site listening at %s\n", desc, addr)
	err = srv.ListenAndServe()
	panic(err)
}
