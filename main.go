package main

import (
	"flag"
	"log"
	"os"

	"soikke.li/moreplease/pkg/assets"
	"soikke.li/moreplease/pkg/config"
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
	var cfgPath string
	flag.StringVar(&cfgPath, "config", "", "path to configuration file")
	flag.Parse()

	if cfgPath == "" {
		flag.Usage()
		os.Exit(1)
	}
	cfg, err := config.Load(cfgPath)
	if err != nil {
		panic(err)
	}

	srv := web.NewServer()
	srv.Addr = cfg.Server.Addr
	// TODO: TLS config

	// Setup HTTP security headers
	fd, err := assets.CSPFetchDirectives(sqlAssets.Assets) // TODO: coffeeHash := `sha256-pyonVwm7hmHrD0g6YG0pCmcbOi3ip98R66NAgqrbTXQ=`
	if err != nil {
		panic(err)
	}
	sec := web.SecurityHeaders{
		CSPFetchDirectives: fd,
	}

	// Setup topic site handlers
	sstore := search.MemoryIndexStorage{}
	sstore.CreateIndex(sqlSite.AssetDocumentProvider{})
	sqlHandler := sqlMux.StaticMux{
		IndexStorage: &sstore,
	}
	baseHandler := idxMux.StaticMux{
		IndexStorage: &sstore,
	}

	// Setup subdomain routing for each topic site
	subcfg := subdomain.Config{}
	subcfg.Subrouter("", baseHandler.NewMux())
	subcfg.Subrouter("sql", sqlHandler.NewMux())

	// Setup metrics collection
	mstore, err := metrics.NewStorage(cfg.Metrics.Store)
	if err != nil {
		panic(err)
	}
	err = mstore.InitSchema()
	if err != nil {
		panic(err)
	}
	mh := metrics.NewHandler(mstore)

	// Apply all middlewares
	h := mh.Apply(sec.Apply(subcfg.NewMux()))
	srv.Handler = h

	log.Printf("*.%s listening...\n", srv.Addr)
	err = srv.ListenAndServe()
	panic(err)
}
