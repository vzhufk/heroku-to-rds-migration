#! /bin/bash

set -e

. activate-rds.sh

psql < db.sql
