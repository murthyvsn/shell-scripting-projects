#!/bin/bash
#
set -e

#<<..
i=1
limit=10

while [ $i -le $limit ];
do
	echo "Numbers are $i"
	((i++))
done
echo "Out of loop"
#..


<<..
a=7
while [ $a -gt 4 ];
do
echo $a
((a--))
done
echo “Out of the loop”
..

i=1
limit=10
# the number 4 can be the limit to

# iterate the loop

until [[ $limit -le $i ]]
do
echo $i
((i++))
done
