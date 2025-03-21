package site

import (
	"github.com/soikes/moreplease/pkg/model"
)

const (
	IndexPage model.PageID = `index`
)

// MP defines metadata and page order of the More Please base site.
var MP = model.NewSite(
	"More { } Please",
	[]model.Section{},
)
