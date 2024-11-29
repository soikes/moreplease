package main

import (
	"os"
	"text/template"

	"golang.org/x/tools/go/packages"
)

const importTemplate = `
// Code generated for dynamic component importing - DO NOT EDIT.
package generate

import (
{{range .ImportPaths }}
	_ "{{- . -}}"
{{end }}
)
`

func main() {
	pattern := os.Args[1]
	config := &packages.Config{
		Mode: packages.NeedName | packages.NeedFiles | packages.NeedCompiledGoFiles,
	}
	pkgs, err := packages.Load(config, pattern) // or any other pattern
	if err != nil {
		panic(err)
	}
	var importPaths []string
	for _, pkg := range pkgs {
		importPaths = append(importPaths, pkg.PkgPath)
	}

	tmpl := template.Must(template.New("imports").Parse(importTemplate))

	f, err := os.Create("./generated_imports.go")
	if err != nil {
		panic(err)
	}
	defer f.Close()

	tmpl.Execute(f, map[string]any{
		"ImportPaths": importPaths,
	})
}
