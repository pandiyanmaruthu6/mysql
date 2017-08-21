#!/bin/bash
DATE=$(date +%d-%m-%Y)
BACKUP_DIR="/mnt/web-backup"

# To create a new directory into backup directory location.
mkdir -p $BACKUP_DIR

# take each website backup in separate name, use below format.
tar -zcvf $BACKUP_DIR/website1-$DATE.tar.gz -P  /var/www/html/website1/
tar -zcvf $BACKUP_DIR/website2-$DATE.tar.gz -P /var/www/html/website2/

# Delete files older than 10 days
find $BACKUP_DIR/* -mtime +10 -exec rm {} \;
