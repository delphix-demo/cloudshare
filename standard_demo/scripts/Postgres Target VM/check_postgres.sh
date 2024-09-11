#!/bin/bash
while true
do
  clear
  printf "\n\nMount Points:\n"
  df -h | grep $1
  printf "\n\nPostgres Processes:\n"
  ps -ef | grep pgsql | grep $1 | grep -v grep
  sleep 5
done