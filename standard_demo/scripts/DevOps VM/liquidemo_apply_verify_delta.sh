#!/bin/bash
#
# This script runs Liquibase to check and show delta between Postgres_DEV_lbase and Prod
#
printf "Read 10 records from Postgres_DEV_lbase. structures changes missing after rerfresh\n"
psql -h 10.160.1.60 -p 5435 -U postgres -d delphixdb -f /home/delphix/liquidemo_read_db.sql
printf "Now let's apply changes produced by Liquibase\n"
psql -h 10.160.1.60 -p 5435 -U postgres -d delphixdb -f change.postgres.sql
printf "\nRead 10 records from Postgres_DEV_lbase. structures changes are back\n"
psql -h 10.160.1.60 -p 5435 -U postgres -d delphixdb -f /home/delphix/liquidemo_read_db.sql

