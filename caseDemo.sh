#!/bin/bash
#
set -e

echo "a for current date"
echo "b for ;isting the files"
echo "c for arithmetic oprtns"

read -p "Give the option: " choice

case $choice in
	a)date;;
	b)ls;;
	c)
		read -p "Enter any two numbers: " a1 b1
		read -p "Provide the symbol of arithmetic oprtn: " symbol

		if [ $symbol == "sum" ]
		then
			echo "$(($a1+$b1))"
		elif [ $symbol == "sub" ]
		then
			echo "$(($a1-$b1))"
		elif [ $symbol == "mul" ]
		then
			echo "$(($a1*$b1))"
		elif [ $symbol = "div" ]
		then
			echo " $(($a1/$b1))"
		else echo "Provide an valid arithmetic expression"
		fi
		;;
	*)echo "Provide a valid option"
esac
