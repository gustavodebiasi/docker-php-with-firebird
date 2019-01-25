FROM php:7.2-fpm

EXPOSE 3050/tcp
EXPOSE 3050/udp
EXPOSE 3051/tcp
EXPOSE 3051/udp

RUN apt-get update
RUN apt-get install wget bzip2 curl libicu-dev libncurses5-dev -yqq --allow-unauthenticated
RUN apt-get install git imagemagick mcrypt libcurl4-gnutls-dev libmcrypt-dev libvpx-dev libjpeg-dev libc-client-dev libkrb5-dev libpng-dev libxpm-dev zlib1g-dev libfreetype6-dev libxml2-dev libexpat1-dev libbz2-dev libgmp3-dev libldap2-dev unixodbc-dev libpq-dev libsqlite3-dev libaspell-dev libsnmp-dev libpcre3-dev libtidy-dev libmagickwand-dev -yqq --allow-unauthenticated
RUN docker-php-ext-install mbstring pdo_mysql curl json intl gd xml zip bz2 opcache
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
