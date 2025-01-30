package assets

import (
	"crypto/sha256"
	"encoding/base64"
	"fmt"
	"io"
	"io/fs"
	"path"
	"strings"
)

func HashAsset(fsys fs.FS, name string) (string, error) {
	f, err := fsys.Open(name)
	if err != nil {
		return "", err
	}
	defer f.Close()
	hasher := sha256.New()
	if _, err := io.Copy(hasher, f); err != nil {
		return "", err
	}
	return fmt.Sprintf("%s-%s", prefixHashType, base64.StdEncoding.EncodeToString(hasher.Sum(nil))), nil
}

func CSPFetchDirectives(fsys fs.FS, externalHashes ...string) ([]string, error) {
	am := assetMap{}
	assets, err := fs.ReadDir(fsys, ".")
	if err != nil {
		return nil, err
	}
	for _, asset := range assets {
		var t assetType
		ext := path.Ext(asset.Name())
		switch ext {
		case `.js`:
			t = assetScript
		case `.css`:
			t = assetStyle
		default:
			continue
		}
		hash, err := HashAsset(fsys, asset.Name())
		if err != nil {
			return nil, err
		}
		am[t] = append(am[t], hash)
	}
	var directives []string
	for atype, hashes := range am {
		directive := strings.Builder{}
		directive.WriteString(string(atype))
		directive.WriteString(" 'self' ")
		if atype == assetScript {
			directive.WriteString("'wasm-unsafe-eval' ")
			for _, external := range externalHashes {
				directive.WriteString(fmt.Sprintf("'%s' ", external))
			}
		}
		for _, hash := range hashes {
			directive.WriteString(fmt.Sprintf("'%s' ", hash))
		}
		directives = append(directives, directive.String())
	}
	return directives, nil
}

const prefixHashType = `sha256`

type assetType string

const (
	assetStyle  assetType = `style-src`
	assetScript assetType = `script-src`
)

type assetMap map[assetType][]string
