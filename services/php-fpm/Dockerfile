FROM php:8.2-fpm

WORKDIR /var/www

# install the necessary packages
RUN apt-get update -y && apt-get install -y \
    curl \
    nano \
    npm \
    g++ \
    git \
    zip \
    vim \
    sudo \
    unzip \
    nodejs \
    libpq-dev \
    libicu-dev \
    libbz2-dev \
    libzip-dev \
    libpng-dev \
    libjpeg-dev \
    libmcrypt-dev \
    libreadline-dev \
    libfreetype6-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql \
    && docker-php-ext-install mysqli pdo_mysql \
    && docker-php-ext-enable mysqli

RUN docker-php-ext-install \
    zip \
    bz2 \
    intl \
    iconv \
    bcmath \
    opcache \
    calendar


# install composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# change ownership of the files
RUN chown -R www-data:www-data /var/www

#RUN cd /var/www/html && npm instal && composer install && php artisan optimize