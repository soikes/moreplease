package web

import (
	"errors"
	"log"
	"net"
	"net/http"
)

type Limiter struct {
	basl *BadASLimiter
}

type BadASLimiter struct {
	ASLookup
	status int
}

type Option func(l *Limiter)

func NewLimiter(opts ...Option) Limiter {
	var l Limiter
	for _, opt := range opts {
		opt(&l)
	}
	return l
}

func WithBadASNs(asl ASLookup, status int) Option {
	return func(l *Limiter) {
		l.basl = &BadASLimiter{
			ASLookup: asl,
			status:   status,
		}
	}
}

func (b Limiter) Apply(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if b.basl != nil {
			host, _, err := net.SplitHostPort(r.RemoteAddr)
			if err != nil {
				log.Printf("failed to split remoteaddr: %s", err.Error())
				next.ServeHTTP(w, r)
				return
			}
			ip := net.ParseIP(host)
			if ip == nil {
				log.Printf("failed to parse remoteaddr host: %s", host)
				next.ServeHTTP(w, r)
				return
			}
			as, err := b.basl.GetBadAS(ip)
			if err != nil {
				// If the ASN was not found in the bad list, it's good.
				if !errors.Is(err, ErrNotFound) {
					log.Printf("failed to check bad asn: %s", err.Error())
				}
				next.ServeHTTP(w, r)
				return
			}
			log.Printf("bad AS: %d \"%s\", returning http %d", as.Number, as.Name, b.basl.status)
			w.WriteHeader(b.basl.status)
			return
		}
		next.ServeHTTP(w, r)
	})
}
