package main

import (
	"flag"
	"fmt"

	"soikke.li/moreplease/pkg/search"
	"soikke.li/moreplease/sites/sql/site"
)

type config struct {
	OutPath string
}

func main() {
	var cfg config
	defaultUsage := flag.Usage
	flag.Usage = func() {
		fmt.Println("Indexes the content of sites for searching.")
		defaultUsage()
	}
	flag.StringVar(&cfg.OutPath, "o", ".", "output index path")
	flag.Parse()
	documents := site.AssetDocumentProvider{}
	storage := search.FSIndexStorage{Path: cfg.OutPath}
	err := storage.CreateIndex(documents)
	if err != nil {
		panic(err)
	}
}
