FROM debian

RUN apt-get update && apt-get -y install nginx
RUN apt-get update && apt-get -y install vim
COPY . /usr/share/nginx/html
#RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
CMD ["nginx", "-g", "daemon off;"]