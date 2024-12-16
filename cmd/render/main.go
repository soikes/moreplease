package main

import (
	"flag"
	"fmt"

	"soikke.li/moreplease/pkg/render"
)

type config struct {
	OutPath string
}

func main() {
	var cfg config
	defaultUsage := flag.Usage
	flag.Usage = func() {
		fmt.Println("Renders registered templ components into html assets.")
		defaultUsage()
	}
	flag.StringVar(&cfg.OutPath, "o", ".", "output directory path")
	flag.Parse()

	render.MustRenderComponents(cfg.OutPath)
}
