package main

import (
	"context"
	"os"
	"os/signal"
	"syscall"

	indexRender "soikke.li/moreplease/sites/index/render"
	_ "soikke.li/moreplease/sites/index/templates"    // Load pkg to register for rendering.
	sqlRender "soikke.li/moreplease/sites/sql/render" // Load pkgs to register them for rendering.
	_ "soikke.li/moreplease/sites/sql/topics"         // Load pkg to register for rendering.
)

// Renders registered templ components into html assets.
func main() {
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGINT, syscall.SIGTERM)
	go func() {
		<-c
		cancel()
	}()

	sqlRender.Registry.MustRenderComponents(ctx, "sites/sql/assets")
	indexRender.Registry.MustRenderComponents(ctx, "sites/index/assets")
}
