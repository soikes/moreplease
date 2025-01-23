package metrics

import (
	"log"
	"net"
	"net/http"
	"net/netip"
	"strings"
	"time"
)

// Handler is an HTTP handler that stores anonymized metrics from each request.
type Handler struct {
	Storage   Storage
	collector chan Request
}

const maxCollectors = 3

func NewHandler(storage Storage) Handler {
	col := make(chan Request)
	h := Handler{
		Storage:   storage,
		collector: col,
	}
	for i := 0; i < maxCollectors; i++ {
		go h.storeVisit(col)
	}
	return h
}

func (h Handler) storeVisit(queue chan Request) {
	for r := range queue {
		v := r.Visit()
		h.Storage.SaveVisit(v)
	}
}

func (h Handler) Apply(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		p := r.URL.Path
		parts := strings.Split(p, "/")
		for _, part := range parts {
			if part == "assets" {
				next.ServeHTTP(w, r)
				return
			}
		}
		mr := Request{}

		mr.Path = r.URL.Path
		// Time of request
		mr.Timestamp = time.Now()

		// User Agent
		mr.UserAgent = r.Header.Get(`User-Agent`)

		// Source IP
		ipHeaders := []string{
			`X-Forwarded-For`,
			`X-Real-IP`,
			`CF-Connecting-IP`,
			`True-Client-IP`,
		}
		src := ``
		for _, header := range ipHeaders {
			if h := r.Header.Get(header); h != `` {
				src = h
				break
			}
		}
		if src == `` {
			src = r.RemoteAddr
		}
		if addr, err := netip.ParseAddrPort(src); err == nil {
			if addr.IsValid() {
				src = addr.Addr().String() // Discard port.
			}
		}
		mr.SourceAddr = src

		// Referer
		mr.Referer = r.Header.Get(`Referer`)

		// Request without port
		if host, _, err := net.SplitHostPort(r.Host); err == nil {
			mr.Host = host
		}

		select {
		case h.collector <- mr:
		default:
			log.Printf("no collectors ready, dropping metric")
		}

		next.ServeHTTP(w, r)
	})
}
