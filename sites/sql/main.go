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

var searchIndex = flag.String("s", "data/moresqlplease.index", "location of indexed documents for search engine")

func main() {
	flag.Parse()
	var m *http.ServeMux
	var desc string
	desc = "static"
	cfg := mux.StaticMuxCfg{
		SearchIndexPath: *searchIndex,
	}
	m = cfg.NewMux()
	srv := web.NewServer()
	fd, err := assets.CSPFetchDirectives(sqlAssets.Assets)
	if err != nil {
		panic(err)
	}
	h := web.SecurityHeaders{
		CSPFetchDirectives: fd,
	}
	handler := h.Apply(m)
	srv.Handler = handler
	srv.Addr = ":8080"
	log.Printf("%s site listening on %s\n", desc, srv.Addr)
	err = srv.ListenAndServe()
	panic(err)
}
