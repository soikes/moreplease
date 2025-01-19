package search

import (
	"github.com/blevesearch/bleve/v2"
)

// FSIndexStorage implements the IndexStorage interface using ephemeral, memory-only storage.
type MemoryIndexStorage struct {
	provider DocumentProvider
	index    bleve.Index
}

func (m MemoryIndexStorage) OpenIndex() (Index, error) {
	return Index{Index: m.index}, nil
}

func (m MemoryIndexStorage) CreateIndex(provider DocumentProvider) error {
	mapping := createIndexMapping()
	index, err := bleve.NewMemOnly(mapping)
	if err != nil {
		return err
	}
	m.index = index
	return indexDocuments(m.index, provider)
}
