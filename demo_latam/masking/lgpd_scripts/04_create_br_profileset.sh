#!/bin/bash
set -euo pipefail
#
# This script will create BR LGPD Domains
#

#source apiHostInfo
#eval $(cat apiHostInfo)
#source helpers

AUTH_HEADER=`cat Authorization`

# TODO - Filtrar os ID's dos Profiles criados, e atualizar o json

echo "* creating 'TEST_DOMAIN'..."
curl --silent -X POST --header ''"$AUTH_HEADER"'' --header 'Content-Type: application/json' --header 'Accept: application/json' -d @BR_profile_sets.json 'http://uvo1shpwko1wyifpt4n.vm.cld.sr/masking/api/profile-sets'