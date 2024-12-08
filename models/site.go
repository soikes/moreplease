package models

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

type PageID int

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

func NewPage(id PageID, title string, url string) Page {
	return Page{
		ID:    id,
		Title: title,
		URL:   url,
	}
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
