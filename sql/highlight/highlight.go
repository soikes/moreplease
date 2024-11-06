package highlight

import (
	"bytes"
	"io/fs"

	"github.com/alecthomas/chroma/v2/formatters/html"
	"github.com/alecthomas/chroma/v2/lexers"
	"github.com/alecthomas/chroma/v2/styles"
)

func sql(sql string, inline bool) string {
	var buf bytes.Buffer
	lexer := lexers.Get("sql")
	style := styles.Get("gruvbox")
	var opts []html.Option
	opts = append(opts, html.Standalone(false))
	if inline {
		opts = append(opts, html.InlineCode(true))
	} else {
		opts = append(opts, html.WithLineNumbers(true))
	}
	formatter := html.New(opts...)
	iterator, err := lexer.Tokenise(nil, sql)
	if err != nil {
		panic(err)
	}
	err = formatter.Format(&buf, style, iterator)
	if err != nil {
		panic(err)
	}
	return buf.String()
}

func Inline(line string) string {
	return sql(line, true)
}

// TODO: Do we still need to ever concat multiple different files in one block? Consider doing the fs read outside this function and remove it.
func Block(fs fs.ReadFileFS, paths ...string) string {
	var source bytes.Buffer
	for _, path := range paths {
		src, err := fs.ReadFile(path)
		if err != nil {
			panic(err)
		}
		_, err = source.Write(src)
		if err != nil {
			panic(err)
		}
	}
	return sql(source.String(), false)
}
