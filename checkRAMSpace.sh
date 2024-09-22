#!/bin/bash
#
set -e
set -o
#set -x


fSpace=$(free -mt | grep 'Total' | awk '{print $4}')
th=300

if [ $fSpace -lt $th ]
then
	echo "RAM is running low, $fSpace is occupied"
else
	echo "RAM has sufficient space of $fSpace"
fi
