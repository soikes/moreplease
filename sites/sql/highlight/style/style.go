package style

import (
	"github.com/DataDog/go-sqllexer"
)

type TokenColors map[sqllexer.TokenType]string

type Style struct {
	Colors TokenColors
}
