package metrics

import "time"

type VisitorID string

type Visitor struct {
	ID VisitorID
}

type Visit struct {
	Visitor   Visitor
	Timestamp time.Time
	Path      string
}
