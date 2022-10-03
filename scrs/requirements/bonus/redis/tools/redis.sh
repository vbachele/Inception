#!/bin/sh

if [ ! -f "/etc/redis/redis.conf.bak" ]; then

    cp /etc//redis/redis.conf /etc/redis/redis.conf.bak #We create the .bak to notify the program if it exists, don't go to the loop anymore

    sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g" /etc/redis/redis.conf
    # sed -i "s|# requirepass foobared|requirepass $REDIS_PWD|g" /etc/redis.conf
    sed -i "s|# maxmemory <bytes>|maxmemory 2mb|g" /etc/redis/redis.conf
    sed -i "s|# maxmemory-policy noeviction|maxmemory-policy allkeys-lru|g" /etc/redis/redis.conf

fi

redis-server --protected-mode no