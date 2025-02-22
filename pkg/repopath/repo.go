package repopath

import (
	"fmt"
	"os"
	"path/filepath"
)

// GetRepoRoot walks upwards from the current working directory to find the current repo's go.mod
// file, returning the path to the repo's root directory.
func GetRepoRoot() (string, error) {
	dir, err := os.Getwd()
	if err != nil {
		return "", err
	}

	for {
		if _, err := os.Stat(filepath.Join(dir, "go.mod")); err == nil {
			return dir, nil
		}

		parent := filepath.Dir(dir)
		if parent == dir {
			return "", fmt.Errorf("go.mod not found")
		}
		dir = parent
	}
}
