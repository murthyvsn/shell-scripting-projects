#!/bin/bash
#

#set -x
set -e

a=55
b=10

if [ $a -gt $b ] 
then
	echo "a is greater then b"
else
	echo "a is lesser then b"
fi

<<..
echo "this should
not be
executed"
..

echo "program is done"

