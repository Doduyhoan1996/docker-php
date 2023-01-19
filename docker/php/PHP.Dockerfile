FROM php:8.2-fpm

RUN apt-get update

RUN apt-get install -y libmcrypt-dev unzip && \
    docker-php-ext-install mbstring mcrypt pdo_mysql

RUN groupmod -g 1000 www-data && \
    usermod -u 1000 www-data

# COPY php.ini /usr/local/etc/php/