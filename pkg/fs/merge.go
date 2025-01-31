package fs

import (
	"errors"
	"fmt"
	"io/fs"
)

// MergeFS is a merged collection of multiple underlying fs.FS.
// It implements the io.FS and the optional io.ReadFileFS interfaces.
// If a file exists at the same path in multiple filesystems, MergeFS
// will check each filesystem in the order they were initially supplied.
type MergeFS struct {
	fss []fs.FS
}

func NewMergeFS(fsys ...fs.FS) MergeFS {
	mfs := MergeFS{
		fss: fsys,
	}
	return mfs
}

func (m *MergeFS) AddFS(fsys fs.FS) {
	m.fss = append(m.fss, fsys)
}

func printFS(fsys fs.FS) error {
	return fs.WalkDir(fsys, ".", func(path string, d fs.DirEntry, err error) error {
		if err != nil {
			return err
		}
		info, err := d.Info()
		if err != nil {
			return err
		}
		fmt.Printf("Path: %s, Size: %d, Mode: %v, IsDir: %v\n",
			path, info.Size(), info.Mode(), d.IsDir())
		return nil
	})
}

func (m MergeFS) Open(name string) (fs.File, error) {
	for _, fsys := range m.fss {
		f, err := fsys.Open(name)
		if err != nil {
			if errors.Is(err, fs.ErrNotExist) {
				continue
			}
			return nil, err
		}
		return f, nil
	}
	return nil, &fs.PathError{
		Op:   "open",
		Path: name,
		Err:  fs.ErrNotExist,
	}
}

func (m MergeFS) ReadFile(name string) ([]byte, error) {
	var buf []byte
	var err error
	validfs := false
	for _, fsys := range m.fss {
		if rffs, ok := fsys.(fs.ReadFileFS); ok {
			validfs = true
			buf, err = rffs.ReadFile(name)
			if err != nil {
				if errors.Is(err, fs.ErrNotExist) {
					continue
				}
				return nil, err
			}
			return buf, nil
		}
	}
	if !validfs {
		return nil, errors.New("ReadFile called without any valid underlying fs.ReadFileFS")
	}
	return nil, fs.ErrNotExist
}
