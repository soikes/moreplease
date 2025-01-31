package site

import (
	"soikke.li/moreplease/pkg/model"
)

const (
	IndexPage model.PageID = `index`
)

// MP defines metadata and page order of the More Please base site.
var MP = model.NewSite(
	"More { } Please",
	[]model.Section{},
)

// AssetDocumentProvider implements search.DocumentProvider for More SQL Please
// using pre-rendered HTML assets from the assets directory.
// type AssetDocumentProvider struct{}

// func (m AssetDocumentProvider) Documents() ([]search.Document, error) {
// 	as := assets.Assets
// 	var docs []search.Document
// 	for _, sec := range MSP.Sections {
// 		for _, page := range sec.Pages {
// 			f, err := as.Open(page.ID.Asset())
// 			if err != nil {
// 				if errors.Is(err, fs.ErrNotExist) {
// 					continue
// 				}
// 				return nil, err
// 			}
// 			defer f.Close()
// 			var buf strings.Builder
// 			e := html.Extractor{
// 				RootTag: atom.Body,
// 				ExcludeTags: []atom.Atom{
// 					atom.Script,
// 					atom.Button,
// 				},
// 			}
// 			err = e.ExtractText(&buf, f)
// 			if err != nil {
// 				return nil, err
// 			}
// 			doc := search.Document{
// 				ID:      string(page.ID),
// 				Title:   page.Title,
// 				URL:     page.URL,
// 				Content: buf.String(),
// 			}
// 			docs = append(docs, doc)
// 		}
// 	}
// 	return docs, nil
// }
