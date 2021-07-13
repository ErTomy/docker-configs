ARG php_version

FROM php:${php_version}

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN a2enmod rewrite

RUN apt-get update -y && apt-get install -y sendmail libpng-dev zlib1g-dev

RUN docker-php-ext-install mbstring zip gd exif        
