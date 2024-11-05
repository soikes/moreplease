#!/bin/sh

tempdir=$(mktemp -d)
function cleanup {
  rm -rf "$tempdir"
}

sqlite3 $tempdir/select.db < sql/schema.sql

cat sql/select.sql
sqlite3 -markdown $tempdir/select.db < sql/select.sql
echo
cat sql/select_all_columns.sql
sqlite3 -markdown $tempdir/select.db < sql/select_all_columns.sql
echo
cat sql/select_alias.sql
sqlite3 -markdown $tempdir/select.db < sql/select_alias.sql
echo
cat sql/select_computation.sql
sqlite3 -markdown $tempdir/select.db < sql/select_computation.sql

trap cleanup EXIT
trap cleanup SIGINT
