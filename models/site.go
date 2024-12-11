package models

import (
	"fmt"
	"strings"
	"unicode"
)

type Site struct {
	Title    string
	Language Language
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

// NewSite returns a Site with Pages that are navigatable to their direct siblings and between Sections.
func NewSite(title string, language Language, sections []Section) Site {
	site := Site{Title: title, Language: language}
	var linkedSections []Section
	for i, section := range sections {
		var linkedPages []Page
		for j, page := range section.Pages {
			if j < len(section.Pages)-1 {
				page.Next = &section.Pages[j+1]
			} else {
				if i < len(sections)-1 && len(sections[i+1].Pages) > 0 {
					page.Next = &sections[i+1].Pages[0]
				}
			}
			if j == 0 {
				if i > 0 && len(sections[i-1].Pages) > 0 {
					page.Prev = &sections[i-1].Pages[len(sections[i-1].Pages)-1]
				}
			} else {
				page.Prev = &section.Pages[j-1]
			}
			linkedPages = append(linkedPages, page)
		}
		section.Pages = linkedPages
		linkedSections = append(linkedSections, section)
	}
	site.Sections = linkedSections
	return site
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
