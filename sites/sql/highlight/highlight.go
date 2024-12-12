package highlight

import (
	"bytes"
	"fmt"

	"github.com/DataDog/go-sqllexer"
	"golang.org/x/net/html"
	"soikke.li/moreplease/sites/sql/highlight/keyword"
	"soikke.li/moreplease/sites/sql/highlight/style/msp"
)

func Block(input string) (string, error) {
	lexer := sqllexer.New(input, sqllexer.WithDBMS(sqllexer.DBMSPostgres))
	tokens := lexer.ScanAll()
	k := keyword.SQLite{}
	var nodes []*html.Node
	for _, token := range tokens {
		if token.Type == sqllexer.IDENT {
			if k.IsKeyword(token.Value) {
				token.Type = sqllexer.KEYWORD
			}
		}
		nodes = append(nodes, htmlFormatter(token))
	}
	code := &html.Node{
		Type: html.ElementNode,
		Data: "code",
	}
	for _, node := range nodes {
		code.AppendChild(node)
	}
	var buf bytes.Buffer
	err := html.Render(&buf, code)
	if err != nil {
		return "", err
	}
	return buf.String(), nil
}

func htmlFormatter(t sqllexer.Token) *html.Node {
	text := &html.Node{
		Type: html.TextNode,
		Data: t.Value,
	}
	color := msp.Style.Colors[t.Type]
	if color != "" {
		span := &html.Node{
			Type: html.ElementNode,
			Data: "span",
			Attr: []html.Attribute{
				{
					Key: "style",
					Val: fmt.Sprintf("color: %s", color),
				},
			},
		}
		span.AppendChild(text)
		return span
	}
	return text
}
