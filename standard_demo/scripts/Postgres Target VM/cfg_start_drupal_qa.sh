#!/bin/bash
#
# script to automate Drupal QA environment start
#
#
# make mounted dir usable by drupal
#
export DIR="/mnt/provision/AppFS_QA"
chmod -R o+rX $DIR
#
# modify permissions to write config and temp sed files
#
chmod ugo+w $DIR/sites/default
#
# modify db host
#
sed -i 's/10.160.1.20/10.160.1.60/' $DIR/sites/default/settings.php
#
# modify db port
#
sed -i 's/5432/7432/' $DIR/sites/default/settings.php
#
# make config directory not writable agains
#
chmod ugo-w $DIR/sites/default
#
# start docker container Drupal-QA
#
docker run --rm --name drupal-QA -p 10000:80 -d -v $DIR/sites/modules:/var/www/html/modules \
    -v $DIR/sites/profiles:/var/www/html/profiles  -v $DIR/sites:/var/www/html/sites \
    -v $DIR/sites/themes:/var/www/html/themes drupal
exit 0

