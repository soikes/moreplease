package main

import (
	"flag"
	"log"
	"net/http"

	"github.com/a-h/templ"
	"soikke.li/moreplease/cmd/metrics/templates"
	"soikke.li/moreplease/pkg/metrics"
	"soikke.li/moreplease/pkg/web"
)

func main() {
	var storagePath string
	flag.StringVar(&storagePath, "metrics", "", "path to metrics storage")
	flag.Parse()
	db, err := metrics.NewStorage(storagePath)
	if err != nil {
		panic(err)
	}
	idx := templates.Index{
		Storage: db,
	}
	srv := web.NewServer()
	mux := http.NewServeMux()
	mux.Handle("GET /", templ.Handler(idx.Component()))
	srv.Handler = mux
	srv.Addr = ":9090"
	log.Printf("metrics server listening on %s", srv.Addr)
	err = srv.ListenAndServe()
	panic(err)
}
