package main

import (
	"soikke.li/moreplease/pkg/search"
	"soikke.li/moreplease/sites/sql/site"
)

func main() {
	documents := site.AssetDocumentProvider{}
	storage := search.FSIndexStorage{Path: `data/moresqlplease.index`}
	err := storage.CreateIndex(documents)
	if err != nil {
		panic(err)
	}
}
