# Create DEV AccessGroup
dev_id=$(cat id_dev.txt)

curl -k -X 'POST' \
  'https://10.160.1.141/v3/access-groups' \
  -H 'accept: application/json' \
  -H 'Authorization: apk 1.3eHlCIKyK3sFatkZylMBiH0T1WN0NDdROOgYCc9M9KAZtXh5xtc46fNYKNuy43eY' \
  -H 'Content-Type: application/json' \
  -d "{
  \"name\": \"DEV\",
  \"single_account\": false,
  \"account_ids\": [
    $dev_id
  ],
  \"account_tags\": [
    {
      \"key\": \"team\",
      \"value\": \"dev\"
    }
  ],
  \"scopes\": [
    {
      \"id\": \"50be6bd0-ee48-4cfc-89cb-574ddd1105df\",
      \"name\": \"devops\",
      \"role_id\": \"1a4fbadb-b936-460d-82ce-118c0dac8ddb\",
      \"scope_type\": \"SCOPED\",
      \"object_tags\": [
        {
          \"key\": \"team\",
          \"value\": \"dev\"
        }
      ],
      \"objects\": [],
      \"always_allowed_permissions\": []
    }
  ]
}"

# Create QA AccessGroup
qa_id=$(cat id_qa.txt)

curl -k -X 'POST' \
  'https://10.160.1.141/v3/access-groups' \
  -H 'accept: application/json' \
  -H 'Authorization: apk 1.3eHlCIKyK3sFatkZylMBiH0T1WN0NDdROOgYCc9M9KAZtXh5xtc46fNYKNuy43eY' \
  -H 'Content-Type: application/json' \
  -d "{
  \"name\": \"QA\",
  \"single_account\": false,
  \"account_ids\": [
    $qa_id
  ],
  \"account_tags\": [
    {
      \"key\": \"team\",
      \"value\": \"qa\"
    }
  ],
  \"scopes\": [
    {
      \"id\": \"50be6bd0-ee48-4cfc-89cb-574ddd1105df\",
      \"name\": \"devops\",
      \"role_id\": \"1a4fbadb-b936-460d-82ce-118c0dac8ddb\",
      \"scope_type\": \"SCOPED\",
      \"object_tags\": [
        {
          \"key\": \"team\",
          \"value\": \"qa\"
        }
      ],
      \"objects\": [],
      \"always_allowed_permissions\": []
    }
  ]
}"