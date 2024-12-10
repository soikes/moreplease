package search

import (
	"errors"
	"net/http"

	"log"

	"github.com/a-h/templ"
	"soikke.li/moreplease/search"
	"soikke.li/moreplease/templates"
)

type Handler struct {
	Index search.Index
}

func NewHandler() (Handler, error) {
	h := Handler{}
	i, err := search.NewIndex()
	h.Index = i
	return h, err
}

func (h Handler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	if err := r.ParseForm(); err != nil {
		log.Printf("ParseForm: %s", err.Error())
		http.Error(w, "couldn't parse search term", http.StatusBadRequest)
		return
	}
	term := r.FormValue(`term`)
	results, err := h.Index.MatchQuery(term)
	if err != nil {
		if !errors.Is(err, search.ErrNoResults) {
			w.WriteHeader(http.StatusBadRequest)
			return
		}
	}
	ri := []templates.ResultInfo{}
	for _, result := range results {
		info := templates.ResultInfo{
			Query:    term,
			Fragment: result.Fragment,
			Title:    result.Title,
			Href:     result.URL,
		}
		ri = append(ri, info)
	}
	res := templ.Handler(templates.SearchResults(ri))
	res.ServeHTTP(w, r)
}
