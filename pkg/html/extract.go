package html

import (
	"fmt"
	"io"
	"slices"

	"golang.org/x/net/html"
	"golang.org/x/net/html/atom"
)

type Extractor struct {
	RootTag     atom.Atom // RootTag specifies the new document root to extract from the document.
	ExcludeTags []atom.Atom
}

// ExtractText extracts text from an HTML document src and writes the content as a string to dst.
// This is useful for indexing documents for search.
func (e *Extractor) ExtractText(dst io.StringWriter, src io.Reader) error {
	document, err := html.Parse(src)
	if err != nil {
		return err
	}
	if e.RootTag == atom.Atom(0) {
		e.RootTag = atom.Body // <body> is a reasonable default to capture text from.
	}
	var root *html.Node
	for node := range document.Descendants() {
		if node.Type == html.ElementNode && node.DataAtom == e.RootTag {
			root = node
		}
	}
	if root == nil {
		return fmt.Errorf(`no root %s`, e.RootTag.String())
	}
	if root != nil {
		for node := range root.Descendants() {
			if node.Type == html.TextNode {
				if !slices.Contains(e.ExcludeTags, node.DataAtom) {
					text := html.UnescapeString(node.Data)
					dst.WriteString(text)
					dst.WriteString(` `)
				}
			}
		}
	}
	return nil
}
