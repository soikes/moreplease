package assets

import (
	"embed"

	"github.com/soikes/moreplease/pkg/fs"
	"github.com/soikes/moreplease/sites/common/assets"
)

//go:embed *
var a embed.FS

var Assets = fs.NewMergeFS(a, assets.Assets)
