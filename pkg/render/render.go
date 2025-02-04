package render

import (
	"context"
	"fmt"
	"log"
	"os"
	"path/filepath"

	"github.com/soikes/moreplease/pkg/component"
)

type Registry struct {
	registry map[string]component.ComponentFunc // registry maps a pre-render path to a renderable component.
}

func (r *Registry) MustRegisterComponent(assetPath string, cf component.ComponentFunc) {
	if r.registry == nil {
		r.registry = make(map[string]component.ComponentFunc)
	}
	if _, exists := r.registry[assetPath]; exists {
		panic(fmt.Errorf("pre-render path already registered: %s", assetPath))
	}
	r.registry[assetPath] = cf
}

func (r *Registry) MustRenderComponents(ctx context.Context, path string, opts ...component.Option) {
	log.Println("render components")
	for ap, cf := range r.registry {
		c := cf(opts...)
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
