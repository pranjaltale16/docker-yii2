# Using php-apache for base image
FROM php:7.1.3-apache

RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_pgsql bcmath

# Add apache conf
WORKDIR /etc/apache2/sites-available
ADD  ./000-default.conf 000-default.conf
WORKDIR /

# Export port
EXPOSE 80
