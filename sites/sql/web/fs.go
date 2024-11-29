package web

import (
	"io/fs"
	"log"
	"path/filepath"
)

func isGoFile(name string) bool {
	ext := filepath.Ext(name)
	if ext == ".go" {
		return true
	}
	return false
}

// AssetsFS is an fs.FS that disallows directory browsing and excludes .go files from being served.
type AssetsFS struct {
	fs.FS
}

func (f AssetsFS) Open(name string) (fs.File, error) {
	if isGoFile(name) {
		return nil, fs.ErrNotExist
	}
	file, err := f.FS.Open(name)
	if err != nil {
		log.Println(err)
		return nil, err
	}
	return AssetsFile{file}, nil
}

// AssetsFile is an fs.File used in an AssetsFS.
type AssetsFile struct {
	fs.File
}

func (f AssetsFile) Stat() (fs.FileInfo, error) {
	fi, err := f.File.Stat()
	if err != nil {
		return nil, err
	}
	if fi.Mode().IsDir() {
		return nil, fs.ErrNotExist
	}
	return fi, nil
}
