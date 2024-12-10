package render

import (
	"context"
	"fmt"
	"os"
	"path/filepath"

	"github.com/a-h/templ"
	"soikke.li/moreplease/models"
)

// Registry is used to register template components for use in pre-rendering.
var Registry map[models.PageID]templ.Component

func RegisterComponent(page models.PageID, c templ.Component) error {
	if Registry == nil {
		Registry = make(map[models.PageID]templ.Component)
	}
	if _, exists := Registry[page]; exists {
		return fmt.Errorf("component already registered: %s", page)
	}
	Registry[page] = c
	return nil
}

func RenderComponents(path string) error {
	for page, c := range Registry {
		assetPath := filepath.Join(path, page.Asset())
		f, err := os.Create(assetPath)
		if err != nil {
			return err
		}
		defer f.Close()
		err = c.Render(context.Background(), f)
		if err != nil {
			return err
		}
	}
	return nil
}
