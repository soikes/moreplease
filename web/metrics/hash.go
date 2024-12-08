package metrics

import (
	"crypto/sha256"
	"fmt"
)

/*
GOALS:
- Unique visitors per hour / day / week / month
- Page views
- Avg time on site
- Bounce rate
- Views and uniques by path
*/

func (r Request) Visitor() Visitor {
	input := r.SourceAddr + r.UserAgent + r.Host
	h := sha256.New()
	h.Write([]byte(input))
	return Visitor{ID: VisitorID(fmt.Sprintf("%x", h.Sum(nil)))}
}

func (r Request) Visit() Visit {
	return Visit{
		Visitor:   r.Visitor(),
		Timestamp: r.Timestamp,
		Path:      r.Path,
	}
}
