FROM php:7.4.3-apache

RUN apt-get update && apt-get install -y \
    wget \
    libpcre3-dev

RUN pecl channel-update pecl.php.net \
	&& pecl install phalcon xdebug-3.0.3

RUN docker-php-ext-install pdo pdo_mysql

RUN docker-php-ext-enable xdebug

COPY apache2.conf /etc/apache2/
RUN a2enmod rewrite