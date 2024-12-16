// Package highlight implements server-side syntax highlighting using chroma.
// Server-side syntax highlighting is no longer used in favor of live editor syntax editing on client-side. See sites/sql/www.
package highlight

import (
	"bytes"
	_ "embed"

	"github.com/alecthomas/chroma/v2"
	"github.com/alecthomas/chroma/v2/formatters/html"
	"github.com/alecthomas/chroma/v2/lexers"
)

//go:embed style.xml
var rawStyle []byte

// Inline returns a highlighted SQL statement suitable for embedding inline with text.
func Inline(stmt string) string {
	return sql(stmt, true)
}

// Block returns a highlighted SQL statement suitable for multiline display with line numbers.
func Block(stmt string) string {
	return sql(stmt, false)
}

func sql(stmt string, inline bool) string {
	var buf bytes.Buffer
	lexer := lexers.Get("sql")
	// style := styles.Get("gruvbox") // "evergarden"
	// style := styles.Get("onesenterprise")
	style := chroma.MustNewXMLStyle(bytes.NewBuffer(rawStyle))
	var opts []html.Option
	opts = append(opts, html.Standalone(false))
	if inline {
		opts = append(opts, html.InlineCode(true))
	} else {
		opts = append(opts, html.WithLineNumbers(true))
	}
	formatter := html.New(opts...)
	iterator, err := lexer.Tokenise(nil, stmt)
	if err != nil {
		panic(err)
	}
	err = formatter.Format(&buf, style, iterator)
	if err != nil {
		panic(err)
	}
	return buf.String()
}
