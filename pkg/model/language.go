package model

import "fmt"

func (l Language) CSSClass() string {
	var ls string
	if lang, ok := languages[l]; ok {
		if lang != "" {
			ls = fmt.Sprintf("language-%s", lang)
		}
	}
	return ls
}

type Language int

const (
	LanguageNone Language = iota
	LanguageSQL
)

var languages = map[Language]string{
	LanguageSQL:  "sql",
	LanguageNone: "",
}
