#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "usage: build.sh SITE_PATH"
    exit 1
fi
site="$1"
templ generate || exit $?
go run soikke.li/moreplease/cmd/render "${site}/assets" || exit $?
pnpm -C "${site}/www" build || exit $?
