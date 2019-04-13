FROM php:7.1.8-apache

COPY . /srv/app
COPY php/vhost.conf /etc/apache2/sites-available/000-default.conf

RUN apt-get clean && apt-get update && apt-get install --fix-missing wget apt-transport-https lsb-release ca-certificates -y
RUN echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list
RUN echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list
RUN cd /tmp && wget https://www.dotdeb.org/dotdeb.gpg && apt-key add dotdeb.gpg
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list

RUN apt-get clean && apt-get update && apt-get install --fix-missing -y \
    php7.1-cli \
    php7.1-fpm \
    php7.1-json \
    php7.1-pdo \
    php7.1-mysql \
    php7.1-zip \
    php7.1-gd  \
    php7.1-mbstring \
    php7.1-curl \
    php7.1-xml \
    php7.1-bcmath \
    php7.1-json

RUN chown -R www-data:www-data /srv/app \
    && a2enmod rewrite