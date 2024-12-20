package search

import (
	"errors"
	"os"
	"path/filepath"

	"github.com/blevesearch/bleve/v2"
	"github.com/blevesearch/bleve/v2/search/query"
)

type Index struct {
	index bleve.Index
}

type ResultInfo struct {
	Fragment       string
	FragmentPrefix string // https://developer.mozilla.org/en-US/docs/Web/URI/Fragment/Text_fragments#prefix-
	Title          string
	URL            string
}

type DocumentProvider interface {
	Documents() ([]Document, error)
}

type Document struct {
	ID      string `json:"id"`
	Title   string `json:"title"`
	URL     string `json:"url"`
	Content string `json:"content"`
}

var ErrNoResults = errors.New(`no results`)

func NewIndex(provider DocumentProvider) (Index, error) {
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

	dataPath := `data`
	indexName := `moresqlplease.bleve`
	path := filepath.Join(dataPath, indexName)

	var err error
	if info, statErr := os.Stat(path); statErr == nil && info.IsDir() {
		err = os.RemoveAll(path)
		if err != nil {
			return i, err
		}
	} else {
		err = os.MkdirAll(dataPath, 0700)
		if err != nil {
			return i, err
		}
	}
	var index bleve.Index
	index, err = bleve.New(path, indexMapping)
	if err != nil {
		return i, err
	}
	documents, err := provider.Documents()
	if err != nil {
		return i, err
	}
	for _, doc := range documents {
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
