Please see https://manpages.debian.org/testing/logrotate/logrotate.8.en.html to how the new version of
logrotate to support hourly configuration.

you can specify hourly, or you can set 
dateext 
dateformat -%Y%m%d%H 

Then you should make cron task to make logroate work.

