package web

import (
	"golang.org/x/tools/go/packages"
)

func RenderHTMLAssets() error {
	pkgs, err := packages.Load(nil, "soikke.li/moreplease/sites/sql/templates/...")
	if err != nil {
		return err
	}
	pkgNames := []string{}
	for _, pkg := range pkgs {
		pkgNames = append(pkgNames, pkg.Name)
	}
	return nil
}
