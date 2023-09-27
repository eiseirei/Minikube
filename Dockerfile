FROM php:7.4-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli && \
    apt-get update && apt-get upgrade -y && \
    echo "ServerName server" >> /etc/apache2/apache2.conf && \
    service apache2 restart