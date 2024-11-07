#!/bin/sh

tempdir=$(mktemp -d)
function cleanup {
  rm -rf "$tempdir"
}

sqlite3 $tempdir/where.db < sql/schema.sql

for s in $(ls sql | grep -v "schema.sql")
do
    cat sql/$s
    sqlite3 -markdown $tempdir/where.db < sql/$s
    echo
done

trap cleanup EXIT
trap cleanup SIGINT
