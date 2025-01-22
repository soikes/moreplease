package metrics

import (
	"database/sql"
	"time"

	_ "github.com/mattn/go-sqlite3"
	"github.com/rs/zerolog/log"
)

type Storage struct {
	path string
	db   *sql.DB
}

func NewStorage(path string) (Storage, error) {
	if path == "" {
		path = ":memory:"
	}
	s := Storage{
		path: path,
	}
	db, err := sql.Open("sqlite3", s.path)
	if err != nil {
		return s, err
	}
	s.db = db
	return s, nil
}

func (s Storage) InitSchema() error {
	_, err := s.db.Exec(schemaStmt)
	return err
}

func (s Storage) SeedFakeData() error {
	_, err := s.db.Exec(seedFakeData)
	return err
}

func (s Storage) GetVisit(id string) (Visit, error) {
	selectStmt := `SELECT id, visitor, timestamp, path, host FROM visits WHERE visit = ?;`
	res, err := s.db.Query(selectStmt, id)
	var v Visit
	if err != nil {
		return v, err
	}
	err = res.Scan(&v.ID, &v.Visitor, &v.Timestamp, &v.Path, &v.Host)
	return v, err
}

func (s Storage) SaveVisit(v Visit) error {
	upsertStmt := `INSERT INTO visits (visitor, timestamp, path, host) VALUES (?, ?, ?, ?) ON CONFLICT DO UPDATE SET visitor=excluded.visitor, timestamp=excluded.timestamp, path=excluded.path, host=excluded.host;`
	_, err := s.db.Exec(upsertStmt, v.Visitor, v.Timestamp, v.Path, v.Host)
	return err
}

/*
GOALS:
- Unique visitors per hour / day / week / month
- Page views
- Avg time on site
- Bounce rate
- Views and uniques by path
*/

// UniqueVisitorsInLast() returns the count of unique visitors in the last period.
// period must be one of: hour, day, week or month.
func (s Storage) UniqueVisitorsInLast(period time.Duration) (int, error) {
	startTime := time.Now().Add(-period).UTC()
	selectStmt := `
		SELECT count(DISTINCT visitor) FROM visits
		WHERE timestamp > ?
	;`
	var n int
	log.Debug().Str(`start`, startTime.String()).Str(`stmt`, selectStmt).Msg(`get unique visitors`)
	err := s.db.QueryRow(selectStmt, startTime).Scan(&n)
	return n, err
}
