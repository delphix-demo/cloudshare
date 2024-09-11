#!/bin/bash
#
# This script shows data from DEV ad QA
#
printf "Read 10 records from DEV. data are masked\n"
psql -h 10.160.1.60 -p 6432 -U postgres -d anagrafe -f /home/delphix/mask_read_db.sql
printf "Read 10 records from QA. data are masked\n"
psql -h 10.160.1.60 -p 7432 -U postgres -d anagrafe -f /home/delphix/mask_read_db.sql



