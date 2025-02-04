package web

import (
	"encoding/json"
	"errors"
	"log"
	"net"
	"os"

	"github.com/banviktor/asnlookup/pkg/database"
)

type ASLookup struct {
	db database.Database
	m  asMap
}

type ASN uint32
type AS struct {
	Number ASN
	Name   string
}
type asMap map[ASN]string

func NewASLookup(badpath, dbpath string) (ASLookup, error) {
	var a ASLookup
	m, err := loadmap(badpath)
	if err != nil {
		return a, err
	}
	a.m = m
	db, err := loaddb(dbpath)
	if err != nil {
		return a, err
	}
	a.db = db
	return a, nil
}

func (a ASLookup) Lookup(ip net.IP) (ASN, error) {
	log.Printf("lookup ip %s", ip.String())
	as, err := a.db.Lookup(ip)
	if err != nil {
		return 0, err
	}
	return ASN(as.Number), nil
}

var ErrNotFound = errors.New("AS not found")

func (a ASLookup) GetBadAS(ip net.IP) (AS, error) {
	var as AS
	asn, err := a.Lookup(ip)
	if err != nil {
		if errors.Is(err, database.ErrNotFound) {
			return as, ErrNotFound
		}
		return as, err
	}
	name, ok := a.m[asn]
	if ok {
		as.Number = asn
		as.Name = name
	}
	return as, nil
}

func loadmap(p string) (asMap, error) {
	buf, err := os.ReadFile(p)
	if err != nil {
		return nil, err
	}
	var as asMap
	err = json.Unmarshal(buf, &as)
	return as, err
}

func loaddb(p string) (database.Database, error) {
	var db database.Database
	f, err := os.OpenFile(p, os.O_RDONLY, 0)
	if err != nil {
		return db, err
	}
	defer f.Close()
	return database.NewFromDump(f)
}
