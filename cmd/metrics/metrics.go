package main

import (
	"flag"
	"log"
	"net/http"

	massets "github.com/soikes/moreplease/cmd/metrics/assets"
	"github.com/soikes/moreplease/cmd/metrics/handlers"
	"github.com/soikes/moreplease/pkg/assets"
	"github.com/soikes/moreplease/pkg/metrics"
	"github.com/soikes/moreplease/pkg/web"
)

func main() {
	var storagePath string
	var fakeData bool
	flag.StringVar(&storagePath, "store", "", "path to metrics store")
	flag.BoolVar(&fakeData, "fakedata", false, "seed the database with fake data for testing")
	flag.Parse()
	db, err := metrics.NewStorage(storagePath)
	if err != nil {
		panic(err)
	}
	if fakeData {
		err = db.SeedFakeData()
		if err != nil {
			panic(err)
		}
	}
	srv := web.NewServer()
	mux := http.NewServeMux()
	ah := assets.NewFSHandler(massets.Assets)
	mux.Handle("GET /assets/{asset}", ah)
	mux.Handle("GET /partials/scalar", handlers.NewScalarMetricsHandler(db))
	mux.Handle("GET /", handlers.NewIndexHandler(db))
	srv.Handler = mux
	srv.Addr = ":9090"
	log.Printf("metrics server listening on %s", srv.Addr)
	err = srv.ListenAndServe()
	panic(err)
}
