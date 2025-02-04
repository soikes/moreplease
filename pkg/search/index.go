package search

import (
	"errors"

	"github.com/blevesearch/bleve/v2"
	"github.com/blevesearch/bleve/v2/analysis/analyzer/simple"
	"github.com/blevesearch/bleve/v2/mapping"
	"github.com/blevesearch/bleve/v2/search/query"
)

type Index struct {
	Index bleve.Index
}

type ResultInfo struct {
	Site      string
	Highlight string
	Fragment  string
	Title     string
	URL       string
	// FragmentPrefix string // https://developer.mozilla.org/en-US/docs/Web/URI/Fragment/Text_fragments#prefix-
}

var ErrNoResults = errors.New(`no results`)

func (i Index) Query(term string) ([]ResultInfo, error) {
	results := []ResultInfo{}
	q := query.NewMatchPhraseQuery(term)

	req := bleve.NewSearchRequest(q)
	req.Highlight = bleve.NewHighlight()
	req.Fields = []string{`content`, `title`, `url`, `site`}
	req.IncludeLocations = true
	req.Size = 5
	res, err := i.Index.Search(req)
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
			if site, ok := hit.Fields[`site`]; ok {
				result.Site = site.(string)
			}
			break
		}
		for _, locs := range hit.Locations {
			for term := range locs {
				result.Highlight = result.Highlight + term + " "
			}
		}
		results = append(results, result)
	}
	return results, nil
}

func createIndexMapping() mapping.IndexMapping {
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
	documentMapping.AddFieldMappingsAt("site", metadataFieldMapping)

	indexMapping := bleve.NewIndexMapping()
	indexMapping.DefaultMapping = documentMapping
	indexMapping.DefaultAnalyzer = simple.Name
	return indexMapping
}

func indexDocuments(index bleve.Index, provider DocumentProvider) error {
	documents, err := provider.Documents()
	if err != nil {
		return err
	}
	for _, doc := range documents {
		err = index.Index(doc.ID, doc)
		if err != nil {
			return err
		}
	}
	return nil
}
