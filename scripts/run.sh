#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "usage: run.sh SITE_PATH"
    exit 1
fi
site="$1"

go run "soikke.li/moreplease/${site}" "$@" || exit 1
