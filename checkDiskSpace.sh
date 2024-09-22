#!/bin/bash

set -e
set -o

diskSpace=$(df -H | grep "xvda16" | awk '{print $5}' | tr -d %)
th=80
to=satya17495@gmail.com
if [ $diskSpace -gt $th ]
then
	echo "Disk space is running low, $diskSpace% is occupied" | mail -s "Disk Space Alert" -A /home/ubuntu/dir1/redirect.log $to
else
	echo "$diskSpace% is only occupied"
fi

