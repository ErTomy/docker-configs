FROM php:8.3-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zip \
    unzip \
    git \
    curl

# Install PHP extensions
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \
    && docker-php-ext-install pdo_mysql

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Install proyect 
# RUN cd /var/www/html && composer install
# RUN ln -s /var/www/html/vendor/bin/drush /usr/local/bin/drush



# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install and configure OPcache
RUN docker-php-ext-install opcache

# Add OPcache configuration
COPY opcache.ini /usr/local/etc/php/conf.d/opcache.ini

# Set working directory
WORKDIR /var/www/html

# Update Apache configuration
RUN sed -i 's|/var/www/html|/var/www/html/web|g' /etc/apache2/sites-available/000-default.conf
