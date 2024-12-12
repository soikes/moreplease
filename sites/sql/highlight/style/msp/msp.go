package msp

import (
	"github.com/DataDog/go-sqllexer"
	"soikke.li/moreplease/sites/sql/highlight/style"
)

var Style = style.Style{
	Colors: style.TokenColors{
		sqllexer.STRING:  "#690",
		sqllexer.NUMBER:  "#9a6e3a",
		sqllexer.KEYWORD: "#07a",
		// sqllexer.IDENT:             "#000000",
		sqllexer.OPERATOR:          "#ffa62b",
		sqllexer.COMMENT:           "#708090",
		sqllexer.MULTILINE_COMMENT: "#708090",
		sqllexer.PUNCTUATION:       "#999",
		sqllexer.FUNCTION:          "#dd4a68",
	},
}
