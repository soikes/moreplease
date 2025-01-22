package metrics

import "time"

type VisitorID string

type VisitID string

type Visit struct {
	ID        VisitID
	Visitor   VisitorID
	Timestamp time.Time
	Path      string
	Host      string
}

type SessionID string

type Session struct {
	Visitor  VisitorID
	Duration time.Duration
}
