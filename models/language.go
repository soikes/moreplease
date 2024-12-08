package models

import "fmt"

func (l Language) Class() string {
	return fmt.Sprintf("language-%s", languages[l])
}

type Language int

const (
	LanguageSQL Language = iota
)

var languages = map[Language]string{
	LanguageSQL: "sql",
}
