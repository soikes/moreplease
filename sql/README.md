# SQL By Example

_SQL by Example_ is designed to be a simple, readable introduction to the SQL language and some related database concepts. It uses statements that have been run against <a href="https://www.sqlite.org">SQLite</a> databases.

## Prerequisites

To run examples yourself:

SQLite CLI - [sqlite-snapshot-202410221619.tar.gz](https://sqlite.org/snapshot/sqlite-snapshot-202410221619.tar.gz)

To build and run the website locally:

Go (1.23.2) - [Download Go](https://go.dev/dl/)

## Project Structure

Each set of examples can be found in the `examples` directory. The schema used to prepare the database for each example is located within each example at `sql/schema.sql`. The statements used within each example are also found in the `sql` directory.

## Running

Each example in `examples` has a `run.sh` script which will setup SQLite databases for each example in a temporary directory, run the associated SQL statement(s), and clean up after itself.

To build and run the website locally, run: `bin/web.sh`
