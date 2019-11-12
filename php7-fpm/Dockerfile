FROM php:7.1-fpm-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk update \
    && apk add freetype-dev libpng-dev libjpeg-turbo-dev \
    && docker-php-ext-install mysqli gd pdo_mysql
