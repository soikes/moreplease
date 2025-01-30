package main

import (
	"flag"
	"log"

	"soikke.li/moreplease/pkg/assets"
	"soikke.li/moreplease/pkg/metrics"
	"soikke.li/moreplease/pkg/search"
	"soikke.li/moreplease/pkg/web"
	sqlAssets "soikke.li/moreplease/sites/sql/assets"
	"soikke.li/moreplease/sites/sql/mux"
	"soikke.li/moreplease/sites/sql/site"
)

func main() {
	var metricsStore string
	flag.StringVar(&metricsStore, "metrics", "", "path to metrics storage")
	flag.Parse()
	var desc string
	desc = "static"
	srv := web.NewServer()
	// TODO: coffeeHash := `sha256-pyonVwm7hmHrD0g6YG0pCmcbOi3ip98R66NAgqrbTXQ=`
	fd, err := assets.CSPFetchDirectives(sqlAssets.Assets)
	if err != nil {
		panic(err)
	}
	sec := web.SecurityHeaders{
		CSPFetchDirectives: fd,
	}
	sstore := search.MemoryIndexStorage{}
	sstore.CreateIndex(site.AssetDocumentProvider{})
	m := mux.StaticMux{
		IndexStorage: &sstore,
	}
	mstore, err := metrics.NewStorage(metricsStore)
	if err != nil {
		panic(err)
	}
	err = mstore.InitSchema()
	if err != nil {
		panic(err)
	}
	mx := metrics.NewHandler(mstore)
	handler := mx.Apply(sec.Apply(m.NewMux()))
	srv.Handler = handler
	srv.Addr = ":8080"
	log.Printf("%s site listening on %s\n", desc, srv.Addr)
	err = srv.ListenAndServe()
	panic(err)
}
