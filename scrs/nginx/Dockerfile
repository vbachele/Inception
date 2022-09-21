FROM debian

RUN apt-get update && apt-get install -y \
        systemctl \
        vim \
        nginx \
        openssl \
        php7.4 \
        php7.4-fpm

# nginx SSL
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
        -out /etc/nginx/ssl/vbachele.crt \
        -keyout /etc/nginx/ssl/vbachele.key \
        -subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=vbachele/CN=vbachele/"


RUN apt-get update && apt-get -y install wget && rm -rf /var/lib/apt/lists/*
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)"

# nginx config
RUN mkdir -p /run/nginx
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

#the only port allowed
EXPOSE	443

# Start nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]