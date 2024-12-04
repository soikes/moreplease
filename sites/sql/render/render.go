package render

import (
	"context"
	"fmt"
	"os"
	"path/filepath"

	"github.com/a-h/templ"
)

var registry map[string]templ.Component

func RegisterComponent(name string, component templ.Component) error {
	if registry == nil {
		registry = make(map[string]templ.Component)
	}
	if _, exists := registry[name]; exists {
		return fmt.Errorf("component already registered: %s", name)
	}
	registry[name] = component
	return nil
}

func RenderComponents(path string) error {
	for name, component := range registry {
		assetPath := filepath.Join(path, name)
		assetPath += ".html"
		f, err := os.Create(assetPath)
		if err != nil {
			return err
		}
		defer f.Close()
		err = component.Render(context.Background(), f)
		if err != nil {
			return err
		}
	}
	return nil
}

// func LoadPkgs(patterns []string) error {
// 	for _, p := range patterns {
// 		_, err := build.Import(p, ".", 0)
// 		if err != nil {
// 			return err
// 		}
// 	}
// }

// type ComponentInfo struct {
// 	Component templ.Component
// 	Name      string
// }

// func FindTemplComponents() (components []ComponentInfo, err error) {
// 	config := &packages.Config{
// 		Mode: packages.NeedTypes |
// 			packages.NeedTypesInfo |
// 			packages.NeedSyntax |
// 			packages.NeedDeps,
// 	}
// 	sigStr := "func() github.com/a-h/templ.Component"

// 	pkgs, err := packages.Load(config, "soikke.li/moreplease/sites/sql/templates/...")
// 	if err != nil {
// 		return
// 	}
// 	for _, pkg := range pkgs {
// 		scope := pkg.Types.Scope()
// 		for _, name := range scope.Names() {
// 			obj := scope.Lookup(name)
// 			if o, ok := obj.(*types.Func); ok {
// 				if o.Exported() {
// 					if obj.Type().String() == sigStr {
// 						component, err := execComponentFunc(obj)
// 						if err != nil {
// 							return nil, err
// 						}
// 						ci := ComponentInfo{
// 							Component: component,
// 							Name:      pkg.Name,
// 						}
// 						components = append(components, ci)
// 					}
// 				}
// 			}
// 		}
// 	}
// 	return
// }

// func execComponentFunc(obj types.Object) (templ.Component, error) {
// 	v := reflect.ValueOf(obj)
// 	if v.Kind() == reflect.Ptr {
// 		v = v.Elem()
// 	}
// 	res := v.Call(nil)
// 	if len(res) != 1 {
// 		return nil, fmt.Errorf("expected 1 return value, got: %d", len(res))
// 	}
// 	component, ok := res[0].Interface().(templ.Component)
// 	if !ok {
// 		return nil, fmt.Errorf("could not assert obj is a templ.Component")
// 	}
// 	return component, nil
// }

// TODO: This is the robust way to find "func() github.com/a-h/templ.Component"s in our pages.
// However, the types.Identical is not producing a match, unsure why.
// func RenderHTMLAssets() error {
// 	config := &packages.Config{
// 		Mode: packages.NeedTypes |
// 			packages.NeedTypesInfo |
// 			packages.NeedSyntax |
// 			packages.NeedDeps,
// 	}

// 	// Get the package signature of the templ package
// 	templPkgName := "github.com/a-h/templ"
// 	pkgs, err := packages.Load(config, templPkgName)
// 	if err != nil {
// 		return err
// 	}
// 	if len(pkgs) != 1 {
// 		return fmt.Errorf("could not find package %s", templPkgName)
// 	}
// 	templPkg := pkgs[0]
// 	scope := templPkg.Types.Scope()
// 	obj := scope.Lookup("Component")

// 	// Create the type signature for a templ component
// 	params := types.NewTuple()
// 	results := types.NewTuple(types.NewVar(0, templPkg.Types, "", obj.Type()))
// 	sig := types.NewSignatureType(nil, nil, nil, params, results, false)

// 	// Get the package signatures of our "template" packages
// 	pkgs, err = packages.Load(config, "soikke.li/moreplease/sites/sql/templates/...")
// 	if err != nil {
// 		return err
// 	}
// 	for _, pkg := range pkgs {
// 		scope := pkg.Types.Scope()
// 		for _, name := range scope.Names() {
// 			obj := scope.Lookup(name)
// 			if types.IdenticalIgnoreTags(obj.Type(), sig) {
// 				fmt.Println(obj.Type())
// 			}
// 		}
// 	}
// 	return nil
// }
