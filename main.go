package main

import (
	"flag"
	"log"

	"soikke.li/moreplease/pkg/assets"
	"soikke.li/moreplease/pkg/metrics"
	"soikke.li/moreplease/pkg/search"
	"soikke.li/moreplease/pkg/web"
	"soikke.li/moreplease/pkg/web/mux/subdomain"
	idxMux "soikke.li/moreplease/sites/index/mux"
	sqlAssets "soikke.li/moreplease/sites/sql/assets"
	sqlMux "soikke.li/moreplease/sites/sql/mux"
	sqlSite "soikke.li/moreplease/sites/sql/site"
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
	sstore.CreateIndex(sqlSite.AssetDocumentProvider{})
	m := sqlMux.StaticMux{
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
	sqlHandler := mx.Apply(sec.Apply(m.NewMux()))

	baseHandler := idxMux.StaticMux{
		IndexStorage: &sstore,
	}

	cfg := subdomain.Config{}
	cfg.Subrouter("", baseHandler.NewMux())
	cfg.Subrouter("sql", sqlHandler)

	srv.Handler = cfg.NewMux()
	srv.Addr = "moreplease.localhost:8080"
	log.Printf("%s site listening on %s\n", desc, srv.Addr)
	err = srv.ListenAndServe()
	panic(err)
}
