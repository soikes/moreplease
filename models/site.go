package models

import (
	"fmt"
	"strings"
	"unicode"
)

type Site struct {
	Title    string
	Language Language
	Index    Page
	Sections []Section
}

type Section struct {
	Title string
	Pages []Page
}

type Page struct {
	ID    PageID
	Title string
	URL   string
	Next  *Page
	Prev  *Page
}

type PageID string

func (p PageID) URL() string {
	return fmt.Sprintf(`/%s`, p)
}

func (p PageID) Asset() string {
	return fmt.Sprintf(`%s.html`, p)
}

// NewSection returns a section of ordered pages that are navigatable to their direct siblings.
func NewSection(title string, pages []Page) Section {
	var linkedPages []Page
	for i, page := range pages {
		if len(pages) != 1 {
			if i < len(pages)-1 {
				page.Next = &pages[i+1]
			}
			if i > 0 {
				page.Prev = &pages[i-1]
			}
		}
		linkedPages = append(linkedPages, page)
	}
	return Section{
		Title: title,
		Pages: linkedPages,
	}
}

func NewPage(id PageID, title string) Page {
	p := Page{
		ID:    id,
		Title: title,
	}
	p.URL = p.ID.URL()
	return p
}

// Page returns the first matching Page from a Site.
// Use this to retrieve a Page model in that Page's template file.
func (s Site) Page(id PageID) Page {
	for _, sec := range s.Sections {
		for _, page := range sec.Pages {
			if page.ID == id {
				return page
			}
		}
	}
	return Page{}
}

func camelToSnake(s string) string {
	var res strings.Builder
	for i, r := range s {
		if i > 0 && unicode.IsUpper(r) {
			res.WriteRune('_')
		}
		res.WriteRune(unicode.ToLower(r))
	}
	return res.String()
}
