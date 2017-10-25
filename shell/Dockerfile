FROM php:7-cli-alpine

RUN apk add --no-cache  \
      autoconf file g++ gcc binutils isl libatomic libc-dev musl-dev make re2c libstdc++ libgcc binutils-libs mpc1 mpfr3 gmp libgomp \
      coreutils \
      freetype-dev \
      libjpeg-turbo-dev \
      libltdl \
      libmcrypt-dev \
      libpng-dev \
      pcre-dev \
      imap-dev \
      openssl-dev \
      python3 \ 
      python3-dev \
    && docker-php-ext-install iconv mcrypt mysqli pdo pdo_mysql zip bcmath \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && docker-php-ext-configure imap --with-imap --with-imap-ssl \
    && docker-php-ext-install imap \
    && pecl install igbinary \
    && pecl install redis \
    && pecl install yaf \
    && pecl install mongodb \
    && docker-php-ext-enable igbinary redis yaf mongodb \
    && pip3 install --upgrade pip \
    && pip3 install pymongo \
    && pip3 install googleads \
    && pip3 install requests \
    && pip3 install redis \
    #&& pip3 install numpy \
    #&& pip3 install scipy \
    #&& pip3 install  scrapy \
    && apk del autoconf file g++ gcc binutils isl libatomic libc-dev musl-dev make re2c libstdc++ libgcc binutils-libs mpc1 mpfr3 gmp libgomp \
    && rm -rf /var/cache/apk/* \
    && echo "0 0 * * *    sh /code/scripts/admin2/cron.sh" >> /etc/crontabs/root

# Show versions

#CMD ["sh"]
CMD ["crond", "-f"]

