#!/bin/bash
#
set -e

read -p "Enter your marks: " marks

if [[ $marks -ge 80 ]] 
then
	echo "First Class"
elif [ $marks -ge 60 ]
then
	echo "Second Class"
elif [ $marks -ge 40 ]
then
	echo "Third Class"
else
	echo "Fail"
fi

read -p "Enter any letter A or a" alpha

[[ $alpha == "A" ]] && echo "Its captial" || echo "It's small"
