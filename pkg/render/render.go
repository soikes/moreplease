package render

import (
	"context"
	"fmt"
	"log"
	"os"
	"path/filepath"

	"github.com/a-h/templ"
)

type Registry struct {
	registry map[string]templ.Component // registry maps a pre-render path to a renderable component.
}

func (r *Registry) MustRegisterComponent(assetPath string, c templ.Component) {
	if r.registry == nil {
		r.registry = make(map[string]templ.Component)
	}
	if _, exists := r.registry[assetPath]; exists {
		panic(fmt.Errorf("pre-render path already registered: %s", assetPath))
	}
	r.registry[assetPath] = c
}

func (r *Registry) MustRenderComponents(ctx context.Context, path string) {
	log.Println("render components")
	for ap, c := range r.registry {
		assetPath := filepath.Join(path, ap)
		f, err := os.Create(assetPath)
		if err != nil {
			panic(err)
		}
		defer f.Close()
		log.Println(assetPath)
		err = c.Render(ctx, f)
		if err != nil {
			panic(err)
		}
	}
}
