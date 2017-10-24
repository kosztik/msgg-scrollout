#!/bin/bash


/etc/init.d/nginx start
/etc/init.d/php-fpm5 start
/etc/init.d/cron start
/etc/init.d/clam-daemon start
/etc/init.d/clam-freshclam start
/etc/init.d/postfix start
/etc/init.d/dovecot start
/etc/init.d/amavis start



while /bin/true; do
    echo "1"
    sleep 60
done
