#!/bin/bash
#
#creation of dir
mkdir folder2

cd folder2
echo "Files are being created in" 
pwd
# creation of two files
touch file111 file222

for file in /home/ubuntu/dir1/folder2/*; do
	echo "${file##*/}"
    done


#echo `basename "$filename"`

