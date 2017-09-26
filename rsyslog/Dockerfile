FROM gliderlabs/alpine:edge
MAINTAINER Smart Lee ismtlee@gmail.com 
RUN  apk update \
  && apk add rsyslog \
  && rm -rf /var/cache/apk/*

ADD rsyslog.conf /etc/rsyslog.conf

EXPOSE 514 514/udp

VOLUME [ "/var/log", "/etc/rsyslog.d" ]

ENTRYPOINT [ "rsyslogd", "-n" ]
