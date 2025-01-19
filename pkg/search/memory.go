package search

import (
	"fmt"

	"github.com/blevesearch/bleve/v2"
)

// FSIndexStorage implements the IndexStorage interface using ephemeral, memory-only storage.
type MemoryIndexStorage struct {
	provider DocumentProvider
}

// OpenIndex() loads the index into memory and returns it.
func (m MemoryIndexStorage) OpenIndex() (Index, error) {
	var index Index
	if m.provider == nil {
		return index, fmt.Errorf(`memory search index not initialized. Must call CreateIndex()`)
	}
	mapping := createIndexMapping()
	idx, err := bleve.NewMemOnly(mapping)
	if err != nil {
		return index, err
	}
	index.Index = idx
	err = indexDocuments(index.Index, m.provider)
	return index, err
}

func (m *MemoryIndexStorage) CreateIndex(provider DocumentProvider) error {
	m.provider = provider
	return nil
}
