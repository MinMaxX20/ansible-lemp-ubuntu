#!/bin/bash

curdata=date '+%d%m%Y' -d "yesterday"
dirlog="/var/log/"
dirrotation="/var/rotation/"
logs1="/var/log/syslog.log" 
logs2="/var/log/error.log"

logs11="/var/log/syslog2.log" 
logs22="/var/log/error2.log"
 
 for name in find ${dirlog}
 do
 cat ${logs1}>${dirlog}/syslog2.log
 cat ${logs2}>${dirlog}/error2.log
 echo "done copying ${name} to ${dirrotation}${curdata}"
 done

zip -r ${dirrotation}${curdata}.zip ${logs11} ${logs22}
find ${dirrotation} -mtime +10 -delete
truncate -s 0 ${logs1} ${logs2}
rm -f ${logs11} ${logs22}
