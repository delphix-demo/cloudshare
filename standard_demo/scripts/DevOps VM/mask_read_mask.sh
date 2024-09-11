#!/bin/bash
#
# This script shows data from MASKGC
#
printf "Read 10 records from MASKGC. data are masked\n"
psql -h 10.160.1.60 -p 5444 -U postgres -d anagrafe -f /home/delphix/mask_read_db.sql


