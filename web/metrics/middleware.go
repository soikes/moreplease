package metrics

import (
	"fmt"
	"net"
	"net/http"
	"net/netip"
	"time"
)

type Middleware struct {
	next      http.Handler
	collector chan Request
}

func NewMiddleware(next http.Handler) *Middleware {
	col := make(chan Request)
	go func() {
		for r := range col {
			v := r.Visit()
			fmt.Println(v)
		}
	}()
	return &Middleware{
		next:      next,
		collector: col,
	}
}

func (m *Middleware) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	mr := Request{}

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
	mr.Path = r.URL.Path

	m.collector <- mr

	m.next.ServeHTTP(w, r)
}
