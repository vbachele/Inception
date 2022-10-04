#!/bin/sh

echo www-data:$FTP_PASSWORD | chpasswd
chown -R 82:82 /var/www/html

exec "$@"
