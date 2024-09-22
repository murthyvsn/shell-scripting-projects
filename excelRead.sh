#!/bin/bash
#
set -e
set -o

echo "--------------------OUTPUT-------------------------"
#awk cmd is used to filter the header columns of the csv file
cat customers.csv | awk 'NR!=1 {print}' | while IFS="," read a1 a2 a3 
do
	echo "Id is $a1"
	echo "Name is $a2"
	echo "Item is $a3"
done > excel.txt
