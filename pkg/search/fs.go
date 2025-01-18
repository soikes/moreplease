package search

import (
	"fmt"
	"os"

	"github.com/blevesearch/bleve/v2"
)

// FSIndexStorage implements the IndexStorage interface using the local filesystem.
type FSIndexStorage struct {
	Path string
}

func (f FSIndexStorage) OpenIndex() (Index, error) {
	var i Index
	if f.Path == "" {
		return i, fmt.Errorf("index Path not set")
	}
	index, err := bleve.Open(f.Path)
	if err != nil {
		return i, err
	}
	i.Index = index
	return i, err
}

func (f FSIndexStorage) CreateIndex(provider DocumentProvider) error {
	if f.Path == "" {
		return fmt.Errorf("index Path not set")
	}
	if info, statErr := os.Stat(f.Path); statErr == nil && info.IsDir() {
		err := os.RemoveAll(f.Path)
		if err != nil {
			return err
		}
	}

	return createIndex(f.Path, provider)
}
