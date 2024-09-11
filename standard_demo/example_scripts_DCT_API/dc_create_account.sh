curl -k -X 'POST' \
  'https://10.160.1.141/v3/management/accounts' \
  -H 'accept: application/json' \
  -H 'Authorization: apk 1.3eHlCIKyK3sFatkZylMBiH0T1WN0NDdROOgYCc9M9KAZtXh5xtc46fNYKNuy43eY' \
  -H 'Content-Type: application/json' \
  -d '{
  "is_admin": false,
  "generate_api_key": false,
  "username": "dev",
  "password": "Delphix_123_2023",
  "tags": [
    {
      "key": "team",
      "value": "dev"
    }
  ]
}' | jq -r '.id' > id_dev.txt

curl -k -X 'POST' \
  'https://10.160.1.141/v3/management/accounts' \
  -H 'accept: application/json' \
  -H 'Authorization: apk 1.3eHlCIKyK3sFatkZylMBiH0T1WN0NDdROOgYCc9M9KAZtXh5xtc46fNYKNuy43eY' \
  -H 'Content-Type: application/json' \
  -d '{
  "is_admin": false,
  "generate_api_key": false,
  "username": "qa",
  "password": "Delphix_123_2023",
  "tags": [
    {
      "key": "team",
      "value": "qa"
    }
  ]
}' | jq -r '.id' > id_qa.txt