FROM debian:buster

RUN		apt-get update
RUN		apt-get install -y redis-server php-redis

COPY ./conf/redis.conf /etc/redis/redis.conf

