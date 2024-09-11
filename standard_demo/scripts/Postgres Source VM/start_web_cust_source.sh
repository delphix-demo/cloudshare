#!/bin/bash
#
# Start Drupal 9 CMS Custom app using Postgres as DB backend
#
docker run --rm --name drupal-cust-PROD -p 9001:80 -d \
    -v /home/delphix/dru9cust/sites/modules:/var/www/html/modules \
    -v /home/delphix/dru9cust/sites/profiles:/var/www/html/profiles \
    -v /home/delphix/dru9cust/sites:/var/www/html/sites \
    -v /home/delphix/dru9cust/sites/themes:/var/www/html/themes \
    drupal
docker ps
#
# Forces Drupal 9 cache rebuild to get new data
#
curl "http://localhost:9001/core/rebuild.php"
