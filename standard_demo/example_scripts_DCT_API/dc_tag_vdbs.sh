# Include tag team=dev on flaskapp_dev VDB
curl -k -X 'POST' \
  'https://10.160.1.141/v3/vdbs/1-MSSQL_DB_CONTAINER-331/tags' \
  -H 'accept: application/json' \
  -H 'Authorization: apk 1.3eHlCIKyK3sFatkZylMBiH0T1WN0NDdROOgYCc9M9KAZtXh5xtc46fNYKNuy43eY' \
  -H 'Content-Type: application/json' \
  -d '{
  "tags": [
    {
      "key": "team",
      "value": "dev"
    }
  ]
}'

# Include tag team=dev on Oracle_DEV VDB
curl -k -X 'POST' \
  'https://10.160.1.141/v3/vdbs/1-ORACLE_DB_CONTAINER-617/tags' \
  -H 'accept: application/json' \
  -H 'Authorization: apk 1.3eHlCIKyK3sFatkZylMBiH0T1WN0NDdROOgYCc9M9KAZtXh5xtc46fNYKNuy43eY' \
  -H 'Content-Type: application/json' \
  -d '{
  "tags": [
    {
      "key": "team",
      "value": "dev"
    }
  ]
}'

# Include tag team=qa on flaskapp_qa VDB
curl -k -X 'POST' \
  'https://10.160.1.141/v3/vdbs/1-MSSQL_DB_CONTAINER-332/tags' \
  -H 'accept: application/json' \
  -H 'Authorization: apk 1.3eHlCIKyK3sFatkZylMBiH0T1WN0NDdROOgYCc9M9KAZtXh5xtc46fNYKNuy43eY' \
  -H 'Content-Type: application/json' \
  -d '{
  "tags": [
    {
      "key": "team",
      "value": "qa"
    }
  ]
}'

# Include tag team=qa on Oracle_QA VDB
curl -k -X 'POST' \
  'https://10.160.1.141/v3/vdbs/1-ORACLE_DB_CONTAINER-618/tags' \
  -H 'accept: application/json' \
  -H 'Authorization: apk 1.3eHlCIKyK3sFatkZylMBiH0T1WN0NDdROOgYCc9M9KAZtXh5xtc46fNYKNuy43eY' \
  -H 'Content-Type: application/json' \
  -d '{
  "tags": [
    {
      "key": "team",
      "value": "qa"
    }
  ]
}'