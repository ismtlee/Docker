FROM alpine:latest
#定义nginx版本
ENV NGINX_VERSION 1.12.1


RUN apk add --no-cache --virtual .build-deps \
    gcc \
    libc-dev \
    make \
    openssl-dev \
    pcre-dev \
    zlib-dev \
    linux-headers \
    curl \
    jemalloc-dev \
    gd-dev \
    git && \
    mkdir -p /var/run/nginx/ &&\
    wget -c http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz
    





