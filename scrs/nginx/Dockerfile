FROM debian

#install all the program
RUN apt-get update && apt-get install -y \
        systemctl \
        vim \
        nginx \
        openssl \
        sudo

#copy html file to the container
COPY ./index.html /var/www/html

# nginx SSL
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
        -out /etc/nginx/ssl/vbachele.crt \
        -keyout /etc/nginx/ssl/vbachele.key \
        -subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=vbachele/CN=vbachele/"

#installing ohmyzsh
RUN apt-get update && apt-get -y install wget && rm -rf /var/lib/apt/lists/*
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)"

# nginx config
RUN mkdir -p /run/nginx
COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

#the only port allowed
EXPOSE	443

# Start nginx
CMD ["nginx", "-g", "daemon off;"]