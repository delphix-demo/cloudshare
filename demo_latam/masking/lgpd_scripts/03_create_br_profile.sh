#!/bin/bash
#
# This script will create BR LGPD Profiles from JSON file
#

AUTH_HEADER=`cat Authorization`
count=0

rm lista_prof_exp_ids.txt
touch lista_prof_exp_ids.txt

while IFS="," read -r rec_column1 rec_column2 rec_column3 rec_column4
do
    DOMAIN_NAME=`echo $rec_column1`
    EXP_NAME=`echo $rec_column2`
    REG_EXP=`echo $rec_column3`
    DATA_LEVEL=`echo $rec_column4`
    echo $DOMAIN_NAME $ALG_NAME $EXP_NAME $REG_EXP $DATA_LEVEL
    echo ""
    curl -X POST --output profile_expression_id.txt --header ''"$AUTH_HEADER"'' --header 'Content-Type: application/json' --header 'Accept: application/json' --data "{\"domainName\": $DOMAIN_NAME, \"expressionName\": $EXP_NAME, \"regularExpression\": $REG_EXP, \"dataLevelProfiling\": $DATA_LEVEL}" 'http://uvo1shpwko1wyifpt4n.vm.cld.sr/masking/api/profile-expressions'
    echo " "
    cat profile_expression_id.txt | awk -F':' '{ print $2 }' | awk -F',' '{print $1}' >> lista_prof_exp_ids.txt
    count=$(( $count + 1 ))
done < <(tail -n +2 profile_expressions.csv)

echo "Created $count of $count Profile Expressions with success."

# Response format

# {
#   "profileExpressionId": 155,
#   "domainName": "ADDRESS",
#   "expressionName": "Address - Specialized 1",
#   "regularExpression": "^special|regex?for*my.addresses",
#   "createdBy": "admin",
#   "dataLevelProfiling": true
# }