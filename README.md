![More { } Please](https://github.com/soikes/moreplease/blob/main/sites/index/assets/logo.svg?raw=true)

_More { } Please_ is a collection of sites to help you learn various technology-focused topics by example.

This repository contains all of the content and code required to host the site.

## Dependencies

More { } Please depends on:

- Go >= 1.23.5 (https://go.dev/dl/)
- bun >= 1.2.1 (https://bun.sh)

If you use [asdf](https://asdf-vm.com) you can install the correct versions by running `asdf install`.

## Building and Running

Run More { } Please and its subdomains locally using a custom task runner `nabu`:

```
bin/nabu run
```

The tasks that can be run using `bin/nabu` are located in `cmd/nabu/tasks`.
