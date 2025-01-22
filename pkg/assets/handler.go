package assets

import (
	"io/fs"
	"net/http"
)

type FSHandler struct {
	fs fs.FS
}

func NewFSHandler(fsys fs.FS) FSHandler {
	h := FSHandler{}
	h.fs = AssetsFS{FS: fsys}
	return h
}

// Asset retrieves a specific static asset from the assets directory.
// Must populate "asset" named path wildcard.
func (h FSHandler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	asset := r.PathValue(`asset`)
	if asset == "" {
		http.NotFound(w, r)
		return
	}
	http.ServeFileFS(w, r, h.fs, asset)
}
