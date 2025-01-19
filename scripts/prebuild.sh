#!/bin/sh
templ generate || exit $?
go run soikke.li/moreplease/cmd/render -o "assets" || exit $?
go run soikke.li/moreplease/cmd/index -o "data/moresqlplease.index" || exit $?
pnpm -C "www" build || exit $?
