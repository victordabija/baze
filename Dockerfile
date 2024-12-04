FROM php:8.2-apache

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

EXPOSE 8080