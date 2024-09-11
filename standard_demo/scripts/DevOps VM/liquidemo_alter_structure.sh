#!/bin/bash
#
# This script alters table in Postgres_DEV_lbase and shows additional columns
#
printf "Alter structure of Postgres_DEV_lbase, running a script\n"
psql -h 10.160.1.60 -p 5435 -U postgres -d delphixdb -f /home/delphix/liquidemo_modify_db.sql
printf "\nRead 10 records from Postgres_DEV_lbase after change. note new columns\n"
psql -h 10.160.1.60 -p 5435 -U postgres -d delphixdb -f /home/delphix/liquidemo_read_db.sql


