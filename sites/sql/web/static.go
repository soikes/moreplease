package web

import (
	"io/fs"
	"net/http"
	"strings"

	"soikke.li/moreplease/sites/sql/assets"
)

// htmlAssetPath converts a web url path into a file path suitable for use with an AssetsFileSystem.
func htmlAssetPath(path string) string {
	if path == "/" {
		path += "index"
	}
	return strings.ReplaceAll(path, "/", "") + ".html"
}

type HTMLHandler struct {
	fsys fs.FS
}

func (h HTMLHandler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	http.ServeFileFS(w, r, h.fsys, htmlAssetPath(r.URL.Path))
}

func NewStaticMux() *http.ServeMux {
	mux := http.NewServeMux()
	as := assets.Assets
	fsys := AssetsFS{as}
	mux.Handle("/assets/", http.StripPrefix("/assets/", http.FileServerFS(fsys)))
	mux.Handle("/", HTMLHandler{fsys})

	return mux
}
