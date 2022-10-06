FROM    alpine:3.15

WORKDIR /var/hugo/me

RUN     apk update && apk upgrade && apk add --update --no-cache \
            hugo \
            git \
            shadow \
 &&     rm -f /var/cache/apk/*
# create new hugo site
RUN hugo new site /var/hugo/me \
 	&&     cd /var/hugo/me \
 	&&     git clone https://github.com/vaga/hugo-theme-m10c themes/m10c \
 	&&     hugo -b https://vbachele.42.fr/me

COPY    ./conf/config.toml        /var/hugo/me/config.toml
COPY    conf/avatar.jpg         /var/hugo/me/themes/m10c/static/avatar.jpg

EXPOSE 1313

CMD     ["hugo", "server", \
         "--bind=0.0.0.0", \
         "--baseURL=https://vbachele.42.fr/me", \
         "-p", "1313", \
         "--logFile=/dev/stdout", \
        "--appendPort=false"]