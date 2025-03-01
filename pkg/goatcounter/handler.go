package goatcounter

import (
	"bytes"
	"encoding/json"
	"log"
	"net"
	"net/http"
	"net/netip"
	"path"
	"strings"
	"time"

	"github.com/soikes/moreplease/pkg/limiter"
	"github.com/soikes/moreplease/pkg/metrics"
)

type Config struct {
	Endpoint string
	Token    string

	newhit  chan APIHit
	hits    []APIHit
	limiter limiter.Config
}

func NewConfig(endpoint, token string) Config {
	l := limiter.NewLimiter(4, time.Second) // Goatcounter rate limits to 4 hits per second.
	return Config{
		Endpoint: endpoint,
		Token:    token,
		limiter:  l,
	}
}

func (c *Config) PostCount(r APICountRequest) error {
	payload, err := json.Marshal(r)
	if err != nil {
		return err
	}
	req, err := http.NewRequest("POST", c.Endpoint, bytes.NewReader(payload))
	if err != nil {
		return err
	}
	req.Header.Add("Content-Type", "application/json")
	req.Header.Add("Authorization", "Bearer "+c.Token)

	client := &http.Client{}
	res, err := client.Do(req)
	if err != nil {
		return err
	}
	defer res.Body.Close()
	return nil
}

func (c *Config) Apply(next http.Handler) http.Handler {
	c.newhit = make(chan APIHit, 100)
	go func() {
		for hit := range c.newhit {
			if c.limiter.Allow() {
				err := c.PostCount(APICountRequest{
					Hits: []APIHit{hit},
				})
				if err != nil {
					log.Printf("failed to post to goatcounter: %s", err.Error())
				}
			} else {
				log.Printf("goatcounter rate limit exceeded, dropping hit")
			}
		}
	}()
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		// Skip assets requests.
		p := r.URL.Path
		parts := strings.Split(p, "/")
		for _, part := range parts {
			if part == "assets" {
				next.ServeHTTP(w, r)
				return
			}
		}
		var hit APIHit

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

		// This struct is for my custom-rolled metrics. Using it here to calculate a session hash for GoatCounter.
		req := metrics.Request{
			Timestamp:  time.Now(),
			Referer:    r.Header.Get(`Referer`),
			SourceAddr: src,
			UserAgent:  r.Header.Get(`User-Agent`),
		}
		// Host without port
		if host, _, err := net.SplitHostPort(r.Host); err == nil {
			req.Host = host
		}
		hit.Session = string(req.VisitorID())
		hit.CreatedAt = req.Timestamp
		hit.IP = req.SourceAddr
		hit.Ref = req.Referer
		hit.UserAgent = req.UserAgent
		hit.Path = path.Join(req.Host, r.URL.Path)
		hit.Query = r.URL.RawQuery
		select {
		case c.newhit <- hit:
		default:
			log.Printf("goatcounter channel full, dropping hit for path: %s", hit.Path)
		}
		next.ServeHTTP(w, r)
	})
}

type APICountRequest struct {
	Filter     []string `json:"filter"`
	Hits       []APIHit `json:"hits"`
	NoSessions bool     `json:"no_sessions"`
}

type APIHit struct {
	Bot       int       `json:"bot"`
	CreatedAt time.Time `json:"created_at"`
	Event     bool      `json:"event"`
	IP        string    `json:"ip"`
	Location  string    `json:"location"`
	Path      string    `json:"path"`
	Query     string    `json:"query"`
	Ref       string    `json:"ref"`
	Session   string    `json:"session"`
	Size      []int     `json:"size"`
	Title     string    `json:"title"`
	UserAgent string    `json:"user_agent"`
}
