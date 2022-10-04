FROM alpine:3.13

RUN	apk update && apk upgrade && apk add --no-cache \
        vsftpd

COPY conf/vsftpd.conf /tmp/vsftpd.conf

COPY tools/server_ftp.sh /tmp/server_ftp.sh
ENTRYPOINT ["sh", "/tmp/server_ftp.sh"]