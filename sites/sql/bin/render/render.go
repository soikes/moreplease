package main

import "soikke.li/moreplease/sites/sql/web"

func main() {
	err := web.RenderHTMLAssets()
	if err != nil {
		panic(err)
	}
}
