#!/bin/sh

# Make sure service is running
service rsyslog start

# Touch the log file so we can tail on it
#touch /var/log/haproxy-access.log

# Throw the log to output
#tail -f /var/log/haproxy-access.log &

# Start haproxy
exec haproxy -d -f /usr/local/etc/haproxy/haproxy.cfg
