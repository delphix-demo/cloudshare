#!/bin/bash
#
# Read Oracle data from Prod
#
# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

ORACLE_HOME=/u01/oracle/oracle19c
ORACLE_SID=orasrc1

export ORACLE_HOME
export ORACLE_SID

exit | /u01/oracle/oracle19c/bin/sqlplus delphixdb/delphixdb@10.160.1.21:1521/ORASRC1 @/home/delphix/read_oracle_prod.sql
