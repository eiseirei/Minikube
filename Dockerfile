FROM php:7.4-apache
RUN docker-php-ext-install mysqli && \
    echo "ServerName server" >> /etc/apache2/apache2.conf && \
    service apache2 restart