#!/bin/sh

tempdir=$(mktemp -d)
function cleanup {
  rm -rf "$tempdir"
}

for s in $(ls sql | grep -v "schema.sql")
do
    base=$(printf $s | awk -F. '{print $1}')
    echo "$tempdir/$base.db"
    sqlite3 "$tempdir/$base.db" < sql/schema.sql
    cat sql/$s
    sqlite3 -markdown "$tempdir/$base.db" < sql/$s
    echo
done

trap cleanup EXIT
trap cleanup SIGINT
