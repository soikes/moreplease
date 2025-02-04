package main

import (
	"context"
	"flag"
	"os"
	"os/signal"
	"syscall"

	"github.com/soikes/moreplease/pkg/component"
	"github.com/soikes/moreplease/pkg/config"
	indexRender "github.com/soikes/moreplease/sites/index/render"
	_ "github.com/soikes/moreplease/sites/index/templates"    // Load pkg to register for rendering.
	sqlRender "github.com/soikes/moreplease/sites/sql/render" // Load pkgs to register them for rendering.
	_ "github.com/soikes/moreplease/sites/sql/topics"         // Load pkg to register for rendering.
)

// Renders registered templ components into html assets.
func main() {
	var cfgPath string
	flag.StringVar(&cfgPath, "config", "", "path to configuration file")
	flag.Parse()

	if cfgPath == "" {
		flag.Usage()
		os.Exit(1)
	}
	cfg, err := config.Load(cfgPath)
	if err != nil {
		panic(err)
	}

	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGINT, syscall.SIGTERM)
	go func() {
		<-c
		cancel()
	}()

	indexRender.Registry.MustRenderComponents(ctx, "sites/index/assets", component.WithBaseUrl(cfg.Server.Url))
	sqlRender.Registry.MustRenderComponents(ctx, "sites/sql/assets", component.WithBaseUrl(cfg.Server.Url))
}
