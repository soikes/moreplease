package model

import "fmt"

func (l Language) CSSClass() string {
	return fmt.Sprintf("language-%s", languages[l])
}

type Language int

const (
	LanguageSQL Language = iota
)

var languages = map[Language]string{
	LanguageSQL: "sql",
}
