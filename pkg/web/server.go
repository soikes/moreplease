package web

// import "net/http"

// func NewServer() *http.Server {

// }

// func SecurityHeaders() func(next http.Handler) http.Handler {
// 	return func(next http.Handler) http.Handler {
// 		return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
// 			w.Header().Set("X-Frame-Options", "DENY") // Warning: Instead of this header, use the frame-ancestors directive in a Content-Security-Policy header.
// 			w.Header().Set("X-Content-Type-Options", "nosniff")
// 		})
// 	}
// }
