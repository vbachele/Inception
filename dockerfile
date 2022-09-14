FROM nginx

COPY . /usr/share/nginx/html
#RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf