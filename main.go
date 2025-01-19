package main

import (
	"flag"
	"log"

	"soikke.li/moreplease/pkg/assets"
	"soikke.li/moreplease/pkg/search"
	"soikke.li/moreplease/pkg/web"
	sqlAssets "soikke.li/moreplease/sites/sql/assets"
	"soikke.li/moreplease/sites/sql/mux"
	"soikke.li/moreplease/sites/sql/site"
)

func main() {
	flag.Parse()
	var desc string
	desc = "static"
	srv := web.NewServer()
	fd, err := assets.CSPFetchDirectives(sqlAssets.Assets)
	if err != nil {
		panic(err)
	}
	h := web.SecurityHeaders{
		CSPFetchDirectives: fd,
	}
	storage := search.MemoryIndexStorage{}
	storage.CreateIndex(site.AssetDocumentProvider{})
	m := mux.StaticMux{
		IndexStorage: &storage,
	}
	handler := h.Apply(m.NewMux())
	srv.Handler = handler
	srv.Addr = ":8080"
	log.Printf("%s site listening on %s\n", desc, srv.Addr)
	err = srv.ListenAndServe()
	panic(err)
}
