package main

import (
	"flag"
	"log"
	"os"

	"github.com/soikes/moreplease/pkg/assets"
	"github.com/soikes/moreplease/pkg/config"
	"github.com/soikes/moreplease/pkg/metrics"
	"github.com/soikes/moreplease/pkg/search"
	"github.com/soikes/moreplease/pkg/web"
	"github.com/soikes/moreplease/pkg/web/mux/subdomain"
	idxMux "github.com/soikes/moreplease/sites/index/mux"
	sqlAssets "github.com/soikes/moreplease/sites/sql/assets"
	sqlMux "github.com/soikes/moreplease/sites/sql/mux"
	sqlSite "github.com/soikes/moreplease/sites/sql/site"
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
