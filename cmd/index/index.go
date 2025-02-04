package main

import (
	"flag"
	"fmt"
	"net/url"
	"os"

	"github.com/soikes/moreplease/pkg/config"
	"github.com/soikes/moreplease/pkg/search"
	sqlSearch "github.com/soikes/moreplease/sites/sql/search"
)

func main() {
	var cfgPath string
	var outPath string
	defaultUsage := flag.Usage
	flag.Usage = func() {
		fmt.Println("Indexes the content of sites for searching.")
		defaultUsage()
	}
	flag.StringVar(&cfgPath, "config", "", "path to configuration file")
	flag.StringVar(&outPath, "o", ".", "output index path")
	flag.Parse()

	if cfgPath == "" || outPath == "" {
		flag.Usage()
		os.Exit(1)
	}
	cfg, err := config.Load(cfgPath)
	if err != nil {
		panic(err)
	}
	u, err := url.Parse(cfg.Server.Url)
	if err != nil {
		panic(err)
	}

	documents := sqlSearch.AssetDocumentProvider{
		SiteUrl: u.String(),
	}
	storage := search.FSIndexStorage{Path: outPath}
	err = storage.CreateIndex(documents)
	if err != nil {
		panic(err)
	}
}
