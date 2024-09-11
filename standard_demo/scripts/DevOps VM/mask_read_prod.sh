#!/bin/bash
#
# This script shows data from Prod
#
printf "Read 10 records from PROD\n"
psql -h 10.160.1.20 -p 5432 -U postgres -d anagrafe -f /home/delphix/mask_read_db.sql

