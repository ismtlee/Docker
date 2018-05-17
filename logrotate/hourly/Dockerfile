FROM alpine
MAINTAINER Smart Lee ismtlee@gmail.com 

RUN  apk update \
  && apk add logrotate curl \
  && rm -rf /var/cache/apk/* \
  && echo "0 * * * *	/usr/sbin/logrotate -f /etc/logrotate.d/web.conf" >> /etc/crontabs/root 


#by compose
#ADD logrotate.conf /etc/logrotate.conf
#直接在挂载目录下做就行
#&& chown -R root /etc/logrotate.d/

CMD ["crond", "-f"]
