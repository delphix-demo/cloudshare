#!/bin/bash
#
# This script shows SuiteCRM Prod and DEV/QA MAsked data via sqlcmd cliuent installed on linux DevOps VM
#
printf "Read Prod Data\n"
/opt/mssql-tools/bin/sqlcmd -S 10.160.1.22 -d suitecrm -U SA -P Delphix_123! -Q "select top 10  id as ID, left(last_name,30) as Surname, left(first_name,30) as Name from dbo.contacts order by id;"
printf "Read Masked DEV Data\n"
/opt/mssql-tools/bin/sqlcmd -S 10.160.1.62 -d v_SuiteCRM_DEV -U SA -P Delphix_123! -Q "select top 10  id as ID, left(last_name,30) as Surname, left(first_name,30) as Name from dbo.contacts order by id;"
printf "Read Masked QA Data\n"
/opt/mssql-tools/bin/sqlcmd -S 10.160.1.62 -d v_SuiteCRM_QA -U SA -P Delphix_123! -Q "select top 10  id as ID, left(last_name,30) as Surname, left(first_name,30) as Name from dbo.contacts order by id;"
