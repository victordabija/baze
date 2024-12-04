FROM php:8.2-apache

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apt-get update --fix-missing
RUN apt-get install -y curl
RUN apt-get install -y build-essential libssl-dev zlib1g-dev libpng-dev libjpeg-dev libfreetype6-dev zip libzip-dev

RUN docker-php-ext-install zip

EXPOSE 8080