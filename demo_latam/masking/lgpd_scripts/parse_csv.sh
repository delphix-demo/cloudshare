#!/bin/bash
exec < domains.csv
read header
while read line
do
   echo "Record is : $line"
done 

echo " "

while IFS="," read -r rec_column1 rec_column2 rec_column3 #rec_column4
do
  echo "Displaying Record-$rec_column1"
  echo "domainName: $rec_column2"
  echo "defaultAlgorithmCode: $rec_column3"
#  echo "Value: $rec_column4"
  echo ""
done < <(tail -n +2 domains.csv)

echo "Parsing CSV to Array"

arr_csv=() 
while IFS= read -r line 
do
    arr_csv+=("$line")
done < domains.csv

echo "Displaying the contents of array mapped from csv file:"
index=0
for record in "${arr_csv[@]}"
do
    DOMAIN=`echo "{" $record "}"`
    echo $DOMAIN
    #echo "Record at index-${index} : $record"
	((index++))
done

#readarray -t array_csv < input.csv

