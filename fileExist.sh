#!/bin/bash

set -e

path=/home/ubuntu/dir1/newFile.txt

if [ -f $path ]
then
	echo "File exist in dir $(realpath $path)"
else
	echo "File not exists"
	echo "File is being created"
	touch $path
	echo "    "
	echo "File is created, Path of the new file $path"

fi
