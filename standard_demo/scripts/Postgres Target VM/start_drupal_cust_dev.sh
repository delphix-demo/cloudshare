#/!bin/bash
#
# script to automate Drupal Custom DEV environment start
#
# make mounted dir usable by drupal
#
export DIR="/mnt/provision/AppFS_cust_DEV"
chmod -R o+rX $DIR
#
# start docker container Drupal-cust-DEV
#
docker run --rm --name drupal-cust-DEV -p 9080:80 -d -v $DIR/sites/modules:/var/www/html/modules \
    -v $DIR/sites/profiles:/var/www/html/profiles  -v $DIR/sites:/var/www/html/sites \
    -v $DIR/sites/themes:/var/www/html/themes drupal
docker ps
#
# Forces Drupal 9 cache rebuild to get new data
#
wget "http://localhost:9080/core/rebuild.php" --delete-after
#
exit 0
