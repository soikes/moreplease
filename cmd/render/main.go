package main

import (
	"context"
	"flag"
	"fmt"
	"os"
	"os/signal"
	"syscall"

	"soikke.li/moreplease/pkg/render"
	_ "soikke.li/moreplease/sites/sql/topics" // Load pkgs to register them for rendering.
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

	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGINT, syscall.SIGTERM)
	go func() {
		<-c
		cancel()
	}()
	render.MustRenderComponents(ctx, cfg.OutPath)
}
