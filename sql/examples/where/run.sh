#!/bin/sh

tempdir=$(mktemp -d)
function cleanup {
  rm -rf "$tempdir"
}

sqlite3 $tempdir/select.db < sql/schema.sql

cat sql/where.sql
sqlite3 -markdown $tempdir/select.db < sql/where.sql
echo

trap cleanup EXIT
trap cleanup SIGINT
