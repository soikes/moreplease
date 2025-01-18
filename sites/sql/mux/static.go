package mux

import (
	"io/fs"
	"net/http"

	"soikke.li/moreplease/pkg/assets"
	"soikke.li/moreplease/pkg/search"
	sqlAssets "soikke.li/moreplease/sites/sql/assets"
)

type FSHandler struct {
	fs fs.FS
}

func NewFSHandler() FSHandler {
	h := FSHandler{}
	as := sqlAssets.Assets
	h.fs = assets.AssetsFS{FS: as}
	return h
}

// asset retrieves a specific static asset from the assets directory.
func (h *FSHandler) asset(w http.ResponseWriter, r *http.Request) {
	asset := r.PathValue(`asset`)
	if asset == "" {
		http.NotFound(w, r)
		return
	}
	http.ServeFileFS(w, r, h.fs, asset)
}

// htmlAsset converts a More SQL Please topic path segment into its matching html asset in the assets directory.
func (h *FSHandler) htmlAsset(w http.ResponseWriter, r *http.Request) {
	asset := r.PathValue(`topic`)
	if asset == `` {
		asset = `index`
	}
	asset += `.html`
	http.ServeFileFS(w, r, h.fs, asset)
}

func NewStaticMux() *http.ServeMux {
	mux := http.NewServeMux()

	storage := search.FSIndexStorage{Path: `data/moresqlplease.index`}
	s, err := search.NewHandler(storage)
	if err != nil {
		panic(err)
	}
	mux.Handle("POST /search/", s)

	f := NewFSHandler()
	mux.HandleFunc("GET /assets/{asset}", f.asset)
	mux.HandleFunc("GET /{topic}", f.htmlAsset)
	mux.HandleFunc("GET /{$}", f.htmlAsset) // index.html
	return mux
}
