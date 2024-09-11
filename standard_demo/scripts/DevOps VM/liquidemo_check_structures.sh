#!/bin/bash
#
# This script shows data from Prod and Postgres_DEV_lbase
#
printf "Read 10 records from PROD\n"
psql -h 10.160.1.20 -p 5432 -U postgres -d delphixdb -f /home/delphix/liquidemo_read_db.sql
printf "Read 10 records from Postgres_DEV_lbase. structures are exactly the same\n"
psql -h 10.160.1.60 -p 5435 -U postgres -d delphixdb -f /home/delphix/liquidemo_read_db.sql

