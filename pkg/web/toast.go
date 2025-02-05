package web

import (
	"fmt"
	"net/http"
)

// TODO: Not sure if this works, have not tested it. Requires adding Toast templates to every page that are invisible by default. See toasts.templ and toast.css.
// Also requires modifying the FS handler to customize errors when an asset is not found. I don't want to cause every failed asset fetch from the browser to redirect to the homepage.
// Redirecting to root with the particular toast fragment selected activates the css pseudo-class corresponding to the particular toast and causes it to be displayed, before fading out.

type ToastType string

const (
	ToastTypeNotFound ToastType = "toast-notfound"
)

type Toast struct {
	Type ToastType
	Msg  string
}

var ToastNotFound = Toast{
	Type: ToastTypeNotFound,
	Msg:  `404 Page not found.`,
}

func NotFoundToast(w http.ResponseWriter, r *http.Request) {
	http.Redirect(w, r, fmt.Sprintf("/#%s", ToastTypeNotFound), http.StatusTemporaryRedirect)
}
