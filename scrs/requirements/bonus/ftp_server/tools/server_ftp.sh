#!/bin/sh

echo www-data:$FTP_WWW_DATA_PASSWORD | chpasswd
chown -R 82:82 /var/www/html

exec "$@"
