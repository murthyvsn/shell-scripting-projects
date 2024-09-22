#!/bin/bash

set -e

add() {
	num1=$1
	num2=$2
	#let sum=$num1+$num2
	#echo "$sum"
	echo "$(($num1+$num2))"
}
<<..
sub() {
i	echo "$(($1-$2))"
}
mul(){
       echo "$(($1*$2))"
}
div(){
	echo "$(($1/$2))"
}
read -p "Provide what calculation needs to be done" choice

case $choice in
	a)add;;
	s)sub;;
	m)mul;;
	d)div;;
	*)echo "Give a proper option"
esac
..
add 1 2
