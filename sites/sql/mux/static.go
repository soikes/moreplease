package mux

import (
	"io/fs"
	"net/http"

	"github.com/soikes/moreplease/pkg/assets"
	"github.com/soikes/moreplease/pkg/search"
	sqlAssets "github.com/soikes/moreplease/sites/sql/assets"
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

// htmlSchemaAsset converts a More SQL Please schema topic path segment into its matching html asset in the assets directory.
func (h *FSHandler) htmlSchemaAsset(w http.ResponseWriter, r *http.Request) {
	asset := r.PathValue(`topic`)
	if asset == `` {
		http.NotFound(w, r)
		return
	}
	asset += `-schema.html`
	http.ServeFileFS(w, r, h.fs, asset)
}

type StaticMux struct {
	IndexStorage search.IndexStorage
}

func (m *StaticMux) NewMux() *http.ServeMux {
	mux := http.NewServeMux()

	h, err := search.NewHandler(m.IndexStorage)
	if err != nil {
		panic(err)
	}
	mux.Handle("POST /search/", h)

	f := NewFSHandler()
	mux.HandleFunc("GET /assets/{asset}", f.asset)
	mux.HandleFunc("GET /tables/{topic}", f.htmlSchemaAsset)
	mux.HandleFunc("GET /{topic}", f.htmlAsset)
	mux.HandleFunc("GET /{$}", f.htmlAsset) // index.html
	return mux
}
