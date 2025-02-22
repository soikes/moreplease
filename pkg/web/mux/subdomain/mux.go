package subdomain

import (
	"log"
	"net/http"
	"strings"
)

type Config struct {
	subrouters map[string]http.Handler
}

func (c *Config) NewMux() *http.ServeMux {
	mux := http.NewServeMux()

	mux.HandleFunc("/", c.handleRequest)
	return mux
}

func (c *Config) Subrouter(subdomain string, handler http.Handler) {
	if c.subrouters == nil {
		c.subrouters = make(map[string]http.Handler)
	}
	c.subrouters[subdomain] = handler
}

func (c *Config) handleRequest(w http.ResponseWriter, r *http.Request) {
	var subdomain string
	parts := strings.Split(r.Host, ".")
	if len(parts) > 2 {
		subdomain = parts[0]
	}

	mux, ok := c.subrouters[subdomain]
	if !ok {
		log.Printf("invalid subdomain: %s", subdomain)
		http.NotFound(w, r)
		return
	}
	mux.ServeHTTP(w, r)
}
