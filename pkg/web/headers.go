package web

import (
	"net/http"
	"strings"
)

func CSPString(httpHeader bool, fetchDirectives ...string) string {
	directives := []string{
		// `upgrade-insecure-requests`,
		`default-src 'self'`,
		`form-action 'self'`,
		`connect-src 'self'`,
		`object-src 'none'`,
	}
	httpHeaderOnlyDirectives := []string{
		`frame-ancestors 'none'`,
	}
	if httpHeader {
		directives = append(directives, httpHeaderOnlyDirectives...)
	}
	if len(fetchDirectives) > 0 {
		directives = append(directives, fetchDirectives...)
	}
	return strings.Join(directives, "; ")
}

type SecurityHeaders struct {
	CSPFetchDirectives []string
}

func (h SecurityHeaders) Apply(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Content-Security-Policy", CSPString(true, h.CSPFetchDirectives...))
		w.Header().Set("Cross-Origin-Opener-Policy", "same-origin")
		w.Header().Set("Cross-Origin-Embedder-Policy", "require-corp")
		w.Header().Set("Cross-Origin-Resource-Policy", "same-site")
		w.Header().Set("Permissions-Policy", "geolocation=(), camera=(), microphone=(), interest-cohort=()")
		w.Header().Set("Referrer-Policy", "strict-origin-when-cross-origin")
		w.Header().Set("Server", "webserver")
		w.Header().Set("Strict-Transport-Security", "max-age=86400; includeSubDomains")
		w.Header().Set("X-Content-Type-Options", "nosniff")
		w.Header().Set("X-Permitted-Cross-Domain-Policies", "none")
		next.ServeHTTP(w, r)
	})
}
