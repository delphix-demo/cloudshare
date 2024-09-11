#!/bin/bash
#
# This script runs Liquibase to check and show delta between Postgres_DEV_lbase and Prod
#
divider===============================
divider=$divider$divider$divider
#
printf "Use Liquibase to get delta between Postgres_DEV_lbase and Production\n"
rm -f change.postgres.sql && /home/delphix/liquibase/liquibase --username=postgres --password=delphix --url=jdbc:postgresql://10.160.1.20:5432/delphixdb --referenceUsername=postgres --referencePassword=delphix --referenceUrl=jdbc:postgresql://10.160.1.60:5435/delphixdb --classpath=/home/delphix/liquibase/lib/postgresql-42.2.20.jar --changeLogFile=change.postgres.sql diffchangelog
printf "These are metadata changes, produced by Liquibase in file change.postgres.sql\n"
printf "$divider\n"
cat change.postgres.sql
printf "$divider\n"

