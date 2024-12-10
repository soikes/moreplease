package search

import (
	"bytes"
	"context"
	"errors"
	"io"
	"os"
	"strings"

	"github.com/blevesearch/bleve/v2"
	"github.com/blevesearch/bleve/v2/search/query"
	"golang.org/x/net/html"
	"golang.org/x/net/html/atom"
	_ "soikke.li/moreplease/sites/sql/generate"
	"soikke.li/moreplease/sites/sql/render"
	"soikke.li/moreplease/sites/sql/site"
)

type Index struct {
	index bleve.Index
}

type ResultInfo struct {
	Fragment string
	Title    string
	URL      string
	Prefix   string
}

type Document struct {
	ID      string `json:"id"`
	Title   string `json:"title"`
	URL     string `json:"url"`
	Content string `json:"content"`
}

var ErrNoResults = errors.New(`no results`)

func NewIndex() (Index, error) {
	i := Index{}

	contentMapping := bleve.NewTextFieldMapping()
	contentMapping.Store = true
	contentMapping.Index = true
	contentMapping.IncludeTermVectors = true

	metadataFieldMapping := bleve.NewTextFieldMapping()
	metadataFieldMapping.Store = true
	metadataFieldMapping.Index = false
	metadataFieldMapping.IncludeInAll = false
	metadataFieldMapping.IncludeTermVectors = false

	documentMapping := bleve.NewDocumentMapping()
	documentMapping.AddFieldMappingsAt("content", contentMapping)
	documentMapping.AddFieldMappingsAt("title", metadataFieldMapping)
	documentMapping.AddFieldMappingsAt("url", metadataFieldMapping)
	documentMapping.AddFieldMappingsAt("id", metadataFieldMapping)
	documentMapping.DefaultAnalyzer = "en"

	indexMapping := bleve.NewIndexMapping()
	indexMapping.DefaultMapping = documentMapping

	indexPath := "data/index.bleve"
	var index bleve.Index
	var err error
	if info, statErr := os.Stat(indexPath); statErr == nil && info.IsDir() {
		err = os.RemoveAll(indexPath)
		if err != nil {
			return i, err
		}
	} else {
		err = os.MkdirAll(`data`, 0700)
		if err != nil {
			return i, err
		}
	}
	index, err = bleve.New(indexPath, indexMapping)
	if err != nil {
		return i, err
	}
	docs, err := LoadDocuments()
	if err != nil {
		return i, err
	}
	for _, doc := range docs {
		index.Index(doc.ID, doc)
	}
	i.index = index
	return i, nil
}

func (i Index) MatchQuery(term string) ([]ResultInfo, error) {
	results := []ResultInfo{}
	q := query.NewMatchPhraseQuery(term)

	req := bleve.NewSearchRequest(q)
	req.Highlight = bleve.NewHighlight()
	req.Fields = []string{`content`, `title`, `url`}
	req.Size = 5

	res, err := i.index.Search(req)
	if err != nil {
		return results, err
	}
	for _, hit := range res.Hits {
		result := ResultInfo{}
		for _, frag := range hit.Fragments {
			if len(frag) > 0 {
				result.Fragment = frag[0]
			} else {
				continue
			}
			if title, ok := hit.Fields[`title`]; ok {
				result.Title = title.(string)
			}
			if url, ok := hit.Fields[`url`]; ok {
				result.URL = url.(string)
			}
			results = append(results, result)
		}
	}
	return results, nil
}

func LoadDocuments() ([]Document, error) {
	var docs []Document
	for id, component := range render.Registry {
		page := site.MSP.Page(id)
		var doc Document
		doc.ID = string(page.ID)
		doc.Title = page.Title
		doc.URL = page.URL
		var buf bytes.Buffer
		err := component.Render(context.Background(), &buf)
		if err != nil {
			return nil, err
		}
		var out strings.Builder
		err = htmlToText(&out, &buf)
		if err != nil {
			return nil, err
		}
		doc.Content = out.String()
		docs = append(docs, doc)
	}
	return docs, nil
}

func htmlToText(dst io.StringWriter, src io.Reader) error {
	document, err := html.Parse(src)
	if err != nil {
		return err
	}
	var body *html.Node
	for node := range document.Descendants() {
		if node.Type == html.ElementNode && node.DataAtom == atom.Body {
			body = node
		}
	}
	if body != nil {
		for node := range body.Descendants() {
			if node.Type == html.TextNode {
				text := html.UnescapeString(node.Data)
				dst.WriteString(text)
				dst.WriteString(` `)
			}
		}
	}
	return nil
}
