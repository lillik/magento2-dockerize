FROM php:7.4.13-fpm
LABEL MAINTAINER="LillikPro <support@lillik.pro>"

# Install required extensions
RUN apt-get update && apt-get install -y \
    cron \
    libmemcached-dev \
    libssl-dev \
    libz-dev \
    libmemcached11 \
    libmcrypt-dev \
    libgd-dev \
    libpng-dev \  
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libpq-dev \
    libonig-dev \
    zlib1g-dev \
    libicu-dev \
    libxslt-dev \
    libjpeg-dev \
    libssl-dev \
    libxml2-dev \
    libzip-dev \
    curl \
    zip \
    ssh \
    libssh2-1-dev \
    vim \
    git \
    openssl \
    sendmail-bin \
    sendmail\
    g++


#Install mcrypt
  RUN pecl install mcrypt
 

RUN docker-php-ext-configure gd --with-freetype --with-jpeg

RUN docker-php-ext-install \
  bcmath \
  gd \
  intl \
  mbstring \
  sockets \
  opcache \
  pdo_mysql \
  soap \
  xsl \
  zip


# Install Composer
RUN curl -sS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin --filename=composer --prefer-dist

# Install OPCache
RUN docker-php-ext-install opcache && \
    docker-php-ext-enable opcache

# Install Xdebug
RUN pecl install xdebug && \
docker-php-ext-enable xdebug

# Install Redis for PHP:
RUN pecl install redis \
    &&  rm -rf /tmp/pear \
    &&  docker-php-ext-enable redis

# Install Mailcatcher
RUN apt-get update &&\
    apt-get -y install build-essential ruby-full libsqlite3-dev &&\
    gem install mailcatcher --no-rdoc --no-ri


COPY conf/www.conf /usr/local/etc/php-fpm.d/
COPY conf/php.ini /usr/local/etc/php/
COPY conf/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY conf/php-fpm.conf /usr/local/etc/
COPY bin/* /usr/local/bin/

RUN usermod -u 1000 www-data
RUN usermod -G 100 www-data

WORKDIR /var/www/html

CMD ["/usr/local/bin/start"]
