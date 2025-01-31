package assets

import (
	"embed"

	"soikke.li/moreplease/pkg/fs"
	"soikke.li/moreplease/sites/common/assets"
)

//go:embed *
var a embed.FS

var Assets = fs.NewMergeFS(a, assets.Assets)
