FROM php:8.2-apache

# Composer をインストール
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Apache の設定を変更
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# 作業ディレクトリを指定
WORKDIR /var/www/html

# Composer のバージョンを確認
RUN composer --version
