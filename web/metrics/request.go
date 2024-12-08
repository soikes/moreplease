package metrics

import (
	"time"
)

type Request struct {
	Referer    string // String type because we only care about hashing the value with others
	SourceAddr string
	Timestamp  time.Time
	Path       string
	Host       string
	UserAgent  string // String type because we only care about hashing the value with others
	// TODO: Response code? Need to change this to visit?
}
