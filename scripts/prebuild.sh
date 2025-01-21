#!/bin/sh
usage() {
    echo "usage: prebuild.sh [-site|-s <path>] [-norender|-n]"
    echo "options: "
    echo "  -site <path>    Path to site to render"
    echo "  -norender       Skip pre-rendering of assets"
    exit 1
}

site="$PWD"
norender=false
while [ $# -gt 0 ]; do
    case "$1" in
        -site|-s) 
            if [ -n "$2" ]; then
                site="$2"
                shift
            else
                echo "--site requires an argument"
            fi
            ;;
        -norender|-n) 
            norender=true
            ;;
    esac
    shift
done

templ generate || exit $?
pnpm -C "${site}/www" build || exit $?
if [ "$norender" = false ]; then
    go run soikke.li/moreplease/cmd/render -o "${site}/assets" || exit $?
fi
