#!/bin/bash
#
# Start Drupal 9 CMS using Postgres as DB backend
#
docker run --rm --name drupal-PROD -p 8001:80 -d \
    -v /home/delphix/drupal9/sites/modules:/var/www/html/modules \
    -v /home/delphix/drupal9/sites/profiles:/var/www/html/profiles \
    -v /home/delphix/drupal9/sites:/var/www/html/sites \
    -v /home/delphix/drupal9/sites/themes:/var/www/html/themes \
    drupal
docker ps
