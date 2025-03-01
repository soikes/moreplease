package mux

import (
	"io/fs"
	"net/http"

	"github.com/soikes/moreplease/pkg/assets"
	"github.com/soikes/moreplease/pkg/search"
	idxAssets "github.com/soikes/moreplease/sites/index/assets"
)

type FSHandler struct {
	fs fs.FS
}

func NewFSHandler() FSHandler {
	h := FSHandler{}
	as := idxAssets.Assets
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

// htmlAsset converts a More { } Please topic path segment into its matching html asset in the assets directory.
func (h *FSHandler) htmlAsset(w http.ResponseWriter, r *http.Request) {
	asset := r.PathValue(`topic`)
	if asset == `` {
		asset = `index`
	}
	asset += `.html`
	http.ServeFileFS(w, r, h.fs, asset)
}

// robots returns the site robots.txt from assets.
func (h *FSHandler) robots(w http.ResponseWriter, r *http.Request) {
	http.ServeFileFS(w, r, h.fs, `robots.txt`)
}

type StaticMux struct {
	IndexStorage search.IndexStorage // TODO: Need to amalgamate all indexed content into one here...
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
	mux.HandleFunc("GET /{topic}", f.htmlAsset)
	mux.HandleFunc("GET /robots.txt", f.robots)
	mux.HandleFunc("GET /{$}", f.htmlAsset) // index.html
	return mux
}
