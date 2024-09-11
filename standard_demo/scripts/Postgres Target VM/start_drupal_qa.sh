#!/bin/bash
#
# script to automate Drupal QA environment start
#
# make mounted dir usable by drupal
#
export DIR="/mnt/provision/AppFS_QA"
chmod -R o+rX $DIR
#
# start docker container Drupal-QA
#
docker run --rm --name drupal-QA -p 10000:80 -d -v $DIR/sites/modules:/var/www/html/modules \
    -v $DIR/sites/profiles:/var/www/html/profiles  -v $DIR/sites:/var/www/html/sites \
    -v $DIR/sites/themes:/var/www/html/themes drupal
exit 0

