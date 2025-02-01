package mux

import (
	"net/http"

	"github.com/soikes/moreplease/pkg/search"
)

// NewServerlessMux returns a mux suitable for use in a serverless system e.g. lambda.
// Persistent data uses an EFS mount.
// Static assets are assumed to be served directly from a bucket via a CDN rule.
// The only routes served are dynamic routes.
func NewServerlessMux() *http.ServeMux {
	mux := http.NewServeMux()

	storage := search.FSIndexStorage{Path: `/mnt/efs/data/moresqlplease.index`}
	s, err := search.NewHandler(storage)
	if err != nil {
		panic(err)
	}
	mux.Handle("POST /search/", s)
	return mux
}
