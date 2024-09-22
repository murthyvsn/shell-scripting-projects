#!/bin/bash
#
set -e

echo "-----------------------"
echo "Hi $1"
echo "-----------------------"
echo "Hi $2"

echo "All the args are - $@"
echo "No of agrs are - $#"

#for loop to access the values from arguements

for fileName in $3
do
	echo "copying file - $fileName"
done

touch $4
cp $3 $4

