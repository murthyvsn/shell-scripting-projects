#!/bin/bash

set -e

n=5

for i in {1..10}
do	
	if [ $n -eq $i ]
	then
		echo "Number found $i"
		break
	fi
	echo "Number not found $i"
done

exit

for j in { 1..10} 
do	
	#let m=$j%2
	if [ (($j%2)) -eq 0 ] 
	then
		continue
	fi
	echo "Odd number is $j"
done
