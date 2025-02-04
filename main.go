package main

import (
	"flag"
	"log"
	"net/url"
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
	sqlSearch "github.com/soikes/moreplease/sites/sql/search"
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

	u, err := url.Parse(cfg.Server.Url)
	if err != nil {
		panic(err)
	}
	srv := web.NewServer()
	srv.Addr = u.Host
	// TODO: TLS config

	// Setup HTTP security headers
	fd, err := assets.CSPFetchDirectives(sqlAssets.Assets) // TODO: coffeeHash := `sha256-pyonVwm7hmHrD0g6YG0pCmcbOi3ip98R66NAgqrbTXQ=`
	if err != nil {
		panic(err)
	}
	sec := web.SecurityHeaders{
		CSPFetchDirectives: fd,
	}

	// Setup search indexes
	sstore := search.MemoryIndexStorage{}
	sstore.CreateIndex(sqlSearch.AssetDocumentProvider{
		SiteUrl: mustApplySubdomain(u.String(), "sql"),
	})

	// Setup topic site handlers
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

func mustApplySubdomain(base, sub string) string {
	u, err := url.Parse(base)
	if err != nil {
		panic(err)
	}
	u.Host = sub + "." + u.Host
	return u.String()
}
