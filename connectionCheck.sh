#!/bin/bash

set -e
set -x

#read -p
#echo "Enter the URL to check the connection $1"

<<..
When we dont need to print o/p to file or terminal
ping -c 1 $1 &> /dev/null
..
ping -c 1 $1 > redirect.log

if [ $? -eq 0 ]
then
	echo "Connection successfull $1"
else
	echo "Connection failed to $1"
fi

