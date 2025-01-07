package search

import (
	"errors"
	"net/http"

	"log"

	"github.com/a-h/templ"
	"soikke.li/moreplease/templates/components"
)

type Handler struct {
	Index Index
}

func NewHandler(dp DocumentProvider) (Handler, error) {
	h := Handler{}
	i, err := NewIndex(dp)
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
	results, err := h.Index.Query(term)
	if err != nil {
		if !errors.Is(err, ErrNoResults) {
			w.WriteHeader(http.StatusBadRequest)
			return
		}
	}
	ri := []components.ResultInfo{}
	for _, result := range results {
		info := components.ResultInfo{
			Highlight: result.Highlight,
			Query:     term,
			Fragment:  result.Fragment,
			Title:     result.Title,
			Href:      result.URL,
		}
		ri = append(ri, info)
	}
	res := templ.Handler(components.SearchResults(ri))
	res.ServeHTTP(w, r)
}
