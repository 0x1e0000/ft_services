FROM alpine:3.11

RUN apk update && apk upgrade
RUN apk add nginx openrc php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session mysql-client
RUN mkdir -p /run/nginx

# ADD telegraf
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/
COPY ./src/telegraf.conf /etc

COPY ./src/default.conf /etc/nginx/conf.d/
COPY ./src/wordpress /var/www/localhost/htdocs/
COPY ./src/run.sh /tmp/
COPY ./src/liveness.sh /

EXPOSE 5050
CMD ["sh", "/tmp/run.sh"]
