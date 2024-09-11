#!/bin/bash
#
# Read Oracle data from DEV and QA
#
PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

ORACLE_HOME=/u01/oracle/oracle19c
ORACLE_SID=orasrc1

export ORACLE_HOME
export ORACLE_SID

cd /home/delphix

exit | /u01/oracle/oracle19c/bin/sqlplus delphixdb/delphixdb@10.160.1.66:1521/MASKEPHE @read_oracle_dev_qa.sql