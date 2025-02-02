FROM php:8.2-apache

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    default-mysql-client \
    curl \
    git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql zip

# Composer をインストール
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Apache の設定を変更
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# 作業ディレクトリを指定
WORKDIR /var/www/html

# Composer のバージョンを確認
RUN composer --version
