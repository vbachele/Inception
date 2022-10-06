FROM    alpine:3.15

WORKDIR /var/hugo/static

RUN     apk update && apk upgrade && apk add --update --no-cache \
            hugo \
            git \
            shadow \
 &&     rm -f /var/cache/apk/*
# create new hugo site
RUN hugo new site /var/hugo/static \
 	&&     cd /var/hugo/static \
 	&&     git clone https://github.com/vaga/hugo-theme-m10c themes/m10c \
 	&&     hugo new posts/presentation.md \
 	&&     hugo -b https://vbachele.42.fr/static \
	&& mkdir -p /var/hugo/me/content/about

COPY    ./conf/config.toml        /var/hugo/static/config.toml
COPY    conf/presentation.md    /var/hugo/static/content/posts/presentation.md
COPY    conf/about.md           /var/hugo/static/content/about/index.md
COPY    conf/avatar.jpg         /var/hugo/static/themes/m10c/static/avatar.jpg
COPY	conf/42fitness.jpg		/var/hugo/static/themes/m10c/static/42fitness.jpg

EXPOSE 1313

CMD     ["hugo", "server", \
         "--bind=0.0.0.0", \
         "--baseURL=https://vbachele.42.fr/static", \
         "-p", "1313", \
         "--logFile=/dev/stdout", \
        "--appendPort=false"]