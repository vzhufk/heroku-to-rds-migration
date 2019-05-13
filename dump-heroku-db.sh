#! /bin/bash

set -e

. activate-heroku.sh

# https://stackoverflow.com/a/46689304

pg_dump --no-acl --no-owner \
  | grep -v -E '^(CREATE\ EXTENSION|COMMENT\ ON)' \
  > db.sql
