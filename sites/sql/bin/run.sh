#!/bin/sh

templ generate
go generate soikke.li/moreplease/sites/sql/...
go run soikke.li/moreplease/sites/sql/bin/render
go run soikke.li/moreplease/sites/sql "$@"
