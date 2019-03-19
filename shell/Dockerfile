FROM php:7-cli-alpine

ENV LANG C.UTF-8
ENV VERSION_GEOIPUPDATE 2.5.0 

RUN apk add --no-cache  --update \
      autoconf file g++ gcc binutils isl libatomic libc-dev musl-dev make re2c libstdc++ libgcc binutils-libs mpc1 mpfr3 gmp libgomp postgresql-dev \
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
      nodejs \
      wget \
      zlib-dev \
      curl-dev \
      musl-dev musl-utils musl-dbg libevent-dev libxml2-dev libxslt-dev libffi-dev \
    && docker-php-ext-install iconv mcrypt mysqli pdo pdo_mysql pdo_pgsql pgsql zip bcmath \
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
    && pip3 install pymysql \
    && pip3 install googleads \
    && pip3 install requests \
    && pip3 install redis \
    && pip3 install psycopg2 \
    && pip3 install geoip2 \
    && pip3 install mobile_codes \
    && pip3 install scrapy \
    # https://github.com/googleads/googleads-python-lib/issues/261
    && pip3 install httplib2==0.10.3 \
    && pip3 install scrapy-splash \ 
    && pip3 install facebookads \ 
    #&& pip3 install numpy \
    #&& pip3 install scipy \
    #&& pip3 install  scrapy \
    && wget https://github.com/maxmind/geoipupdate/releases/download/v${VERSION_GEOIPUPDATE}/geoipupdate-${VERSION_GEOIPUPDATE}.tar.gz \
    && tar zxvf geoipupdate-${VERSION_GEOIPUPDATE}.tar.gz \
    && cd geoipupdate-${VERSION_GEOIPUPDATE} \
    && ./configure \ 
    && make \
    && make install \
    && cd .. \
    && rm -rf ./geoipupdate-${VERSION_GEOIPUPDATE} \
    && apk del autoconf file g++ gcc binutils isl libatomic libc-dev musl-dev make re2c libstdc++ libgcc binutils-libs mpc1 mpfr3 gmp libgomp wget zlib-dev curl-dev \
    && rm -rf /var/cache/apk/* 
#    && echo "0 0 * * *    sh /code/scripts/admin2/report/cron.sh" >> /etc/crontabs/root \
#    && echo "0 0 * * *    sh /code/scripts/admin2/report/cron_dawn.sh" >> /etc/crontabs/root \
    # gp开发者推广邮件
    # 暂停
#    && echo "#0 6 * * *    sh /code/scripts/email/cron_email.sh" >> /etc/crontabs/root \
    # ivyshare 
#    && echo "*/20 * * * *   sh  /code/ivyshare/application/scripts/cron.sh" >> /etc/crontabs/root \
    # 留存计算
#    && echo "* 1 * * *   sh  /code/scripts/admin/report/cron_ga_rentions.sh" >> /etc/crontabs/root

# Show versions

#CMD ["sh"]
CMD ["crond", "-f"]

