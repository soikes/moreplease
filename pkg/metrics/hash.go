package metrics

import (
	"crypto/sha256"
	"fmt"
)

func (r Request) VisitorID() VisitorID {
	y, m, d := r.Timestamp.UTC().Date()
	nonce := fmt.Sprintf("%d%d%d", y, m, d)
	input := r.SourceAddr + r.UserAgent + r.Host + nonce
	h := sha256.New()
	h.Write([]byte(input))
	return VisitorID(fmt.Sprintf("%x", h.Sum(nil)))
}

func (r Request) Visit() Visit {
	return Visit{
		Visitor:   r.VisitorID(),
		Timestamp: r.Timestamp.UTC(),
		Path:      r.Path,
		Host:      r.Host,
	}
}
