package main

import (
	"flag"
	"log"
	"net/http"
	"net/url"
	"os"

	"github.com/soikes/moreplease/etc"
	"github.com/soikes/moreplease/pkg/assets"
	"github.com/soikes/moreplease/pkg/config"
	"github.com/soikes/moreplease/pkg/goatcounter"
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

	// Setup webserver and TLS configuration
	srv := web.NewServer()
	srv.Addr = ":" + cfg.Server.Port
	if cfg.Server.EnableTLS {
		srv.TLSConfig = web.NewTLSConfig()
	}

	// Setup HTTP security headers
	fd, err := assets.CSPFetchDirectives(sqlAssets.Assets) // TODO: coffeeHash := `sha256-pyonVwm7hmHrD0g6YG0pCmcbOi3ip98R66NAgqrbTXQ=`
	if err != nil {
		panic(err)
	}
	sec := web.SecurityHeaders{
		CSPFetchDirectives: fd,
	}

	// Setup bad ASN blocking
	asl, err := web.NewASLookup(etc.Assets, "bad_asns.json", "asns.db")
	if err != nil {
		panic(err)
	}
	limiter := web.NewLimiter(web.WithBadASNs(asl, http.StatusForbidden))

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

	// Setup metrics collection: See below, using GoatCounter for now.
	// mstore, err := metrics.NewStorage(cfg.Metrics.Store)
	// if err != nil {
	// 	panic(err)
	// }
	// err = mstore.InitSchema()
	// if err != nil {
	// 	panic(err)
	// }
	// mh := metrics.NewHandler(mstore)

	ep, ok := os.LookupEnv(`goatcounter_endpoint`)
	if !ok {
		panic(`goatcounter_endpoint unset`)
	}
	tkn, ok := os.LookupEnv(`goatcounter_token`)
	if !ok {
		panic(`goatcounter_token unset`)
	}
	// Use GoatCounter metrics for now.
	goatcfg := goatcounter.NewConfig(ep, tkn)

	// Apply all middlewares
	h := limiter.Apply(goatcfg.Apply(sec.Apply(subcfg.NewMux())))
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
