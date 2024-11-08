//go:build js && wasm
// +build js,wasm

package web

// This is an experiment in using DOM bindings via WASM.
// The output WASM is over 1MB - Not tenable for this site for now!
// func SetStickyHeight() {
// 	d := dom.GetWindow().Document()
// 	stickyBlocks := d.QuerySelectorAll(".code")
// 	f := func(dom.Event) {
// 		for _, block := range stickyBlocks {
// 			desc := block.PreviousElementSibling()
// 			height := desc.GetBoundingClientRect().Height()
// 			htmlBlock := desc.(dom.HTMLElement)
// 			htmlBlock.Style().SetProperty("--content-height", fmt.Sprintf("%fpx", height), "")
// 		}
// 	}
// 	dom.GetWindow().AddEventListener("load", false, f)
// 	// dom.GetWindow().AddEventListener("resize", false, f)
// }
