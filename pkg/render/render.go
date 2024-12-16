package render

import (
	"context"
	"fmt"
	"os"
	"path/filepath"

	"github.com/a-h/templ"
)

// registry maps a pre-render path to a renderable component.
var registry map[string]templ.Component

func MustRegisterComponent(assetPath string, c templ.Component) {
	if registry == nil {
		registry = make(map[string]templ.Component)
	}
	if _, exists := registry[assetPath]; exists {
		panic(fmt.Errorf("pre-render path already registered: %s", assetPath))
	}
	registry[assetPath] = c
}

func MustRenderComponents(path string) {
	for ap, c := range registry {
		assetPath := filepath.Join(path, ap)
		f, err := os.Create(assetPath)
		if err != nil {
			panic(err)
		}
		defer f.Close()
		fmt.Println("rendering " + assetPath)
		err = c.Render(context.Background(), f)
		if err != nil {
			panic(err)
		}
	}
}
