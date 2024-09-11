curl -k -X POST 'https://uvo18oz1uisfurv1b4l.vm.cld.sr/v2/management/engines' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: apk 2.YYgpjHxljW7A7gdU1Llu8ZiUacHw84gfbnuaqSXmNFpP8yFxsOxF1xt4urW9D3ZN' \
  -d '{
  "name": "CDE1",
  "hostname": "10.160.1.5",
  "username": "admin",
  "password": "Delphix_123!",
  "insecure_ssl": true,
  "unsafe_ssl_hostname_check": true,
  "tags": [
    {
      "key": "type",
      "value": "Demo"
    },
    {
      "key": "blueprint",
      "value": "Core"
    }
  ]
}'
