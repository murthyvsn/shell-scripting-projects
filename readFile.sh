#!/bin/bash
#
set -e
i=1
while read var
do 
	echo " $((i++)) $var "
done < nameList.txt
