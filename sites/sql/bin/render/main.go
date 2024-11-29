package main

import (
	_ "soikke.li/moreplease/sites/sql/generate"
	"soikke.li/moreplease/sites/sql/render"
)

func main() {
	err := render.RenderComponents("assets")
	if err != nil {
		panic(err)
	}
}
