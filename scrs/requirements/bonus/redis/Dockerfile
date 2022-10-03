FROM debian:buster

RUN		apt-get update
RUN		apt-get install -y redis

COPY ./tools/redis.sh /tmp/redis.sh

EXPOSE 6379

CMD ["sh", "/tmp/redis.sh"]