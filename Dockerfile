FROM ubuntu:18.04

ENV TZ=UTC

RUN export LC_ALL=C.UTF-8
RUN DEBIAN_FRONTEND=noninteractive
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install -y \
    sudo \
    autoconf \
    autogen \
    language-pack-en-base \
    wget \
    zip \
    unzip \
    curl \
    rsync \
    ssh \
    openssh-client \
    git \
    build-essential \
    apt-utils \
    software-properties-common \
    nasm \
    libjpeg-dev \
    libpng-dev \
    libpng16-16

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

# PHP
RUN LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php && apt-get update && apt-get install -y php${PHP_VERSION}
RUN apt-get install -y \
    php${PHP_VERSION}-curl \
    php${PHP_VERSION}-gd \
    php${PHP_VERSION}-dev \
    php${PHP_VERSION}-xml \
    php${PHP_VERSION}-bcmath \
    php${PHP_VERSION}-mysql \
    php${PHP_VERSION}-pgsql \
    php${PHP_VERSION}-mbstring \
    php${PHP_VERSION}-zip \
    php${PHP_VERSION}-bz2 \
    php${PHP_VERSION}-sqlite \
    php${PHP_VERSION}-soap \
    php${PHP_VERSION}-intl \
    php${PHP_VERSION}-imap \
    php${PHP_VERSION}-imagick \
    php${PHP_VERSION}-memcached
RUN command -v php

# Composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer && \
    chmod +x /usr/local/bin/composer && \
    composer self-update --preview
RUN command -v composer

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install nodejs -y
RUN npm install npm -g
RUN command -v node
RUN command -v npm

# Other
RUN mkdir ~/.ssh
RUN touch ~/.ssh_config

# Display versions installed
RUN php -v
RUN composer --version
RUN node -v
RUN npm -v
