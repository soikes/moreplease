package component

import (
	"github.com/a-h/templ"
)

// Config allows you to dynamically construct templ components with configuration at runtime.
type Config struct {
	BaseUrl string
}

type ComponentFunc func(...Option) templ.Component

func NoOptions(c templ.Component) ComponentFunc {
	return ComponentFunc(func(opts ...Option) templ.Component {
		return c
	})
}

type Option func(c *Config)

func WithBaseUrl(u string) Option {
	return func(c *Config) {
		c.BaseUrl = u
	}
}
