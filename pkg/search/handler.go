package search

import (
	"errors"
	"fmt"
	"net/http"
	"strings"
	"unicode"

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

const maxTermLen = 50

func (h Handler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	r.Body = http.MaxBytesReader(w, r.Body, 1<<20)
	if err := r.ParseForm(); err != nil {
		log.Printf("failed to parse search term: %s", err.Error())
		http.Error(w, "couldn't parse search term", http.StatusBadRequest)
		return
	}
	term, err := prepareTerm(r.FormValue(`term`))
	if err != nil {
		log.Printf("failed to prepare term: %s", err.Error())
		http.Error(w, "couldn't parse search term", http.StatusBadRequest)
		return
	}
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

func prepareTerm(term string) (string, error) {
	if len(term) > maxTermLen {
		return "", fmt.Errorf("term too long: %d > %d", len(term), maxTermLen)
	}
	term = strings.Map(func(r rune) rune {
		if unicode.IsControl(r) {
			return -1
		}
		return r
	}, term)
	return term, nil
}
