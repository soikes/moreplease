package search

import (
	"errors"
	"io/fs"
	"net/url"
	"strings"

	"github.com/soikes/moreplease/pkg/html"
	"github.com/soikes/moreplease/pkg/search"
	"github.com/soikes/moreplease/sites/sql/assets"
	"github.com/soikes/moreplease/sites/sql/site"
	"golang.org/x/net/html/atom"
)

// AssetDocumentProvider implements search.DocumentProvider for More SQL Please
// using pre-rendered HTML assets from the assets directory.
type AssetDocumentProvider struct {
	SiteUrl string
}

func (m AssetDocumentProvider) Documents() ([]search.Document, error) {
	u, err := url.Parse(m.SiteUrl)
	if err != nil {
		return nil, err
	}
	as := assets.Assets
	var docs []search.Document
	for _, sec := range site.MSP.Sections {
		for _, page := range sec.Pages {
			f, err := as.Open(page.ID.Asset())
			if err != nil {
				if errors.Is(err, fs.ErrNotExist) {
					continue
				}
				return nil, err
			}
			defer f.Close()
			var buf strings.Builder
			e := html.Extractor{
				RootTag: atom.Body,
				ExcludeTags: []atom.Atom{
					atom.Script,
					atom.Button,
				},
			}
			err = e.ExtractText(&buf, f)
			if err != nil {
				return nil, err
			}
			ul := u.JoinPath(page.Path)
			doc := search.Document{
				ID:      string(page.ID),
				Title:   page.Title,
				URL:     ul.String(),
				Content: buf.String(),
				Site:    site.MSP.Title,
			}
			docs = append(docs, doc)
		}
	}
	return docs, nil
}
