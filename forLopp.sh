#!/bin/bash
#
 set -e

 for ((i=0;i<=10;i++)) do
	 echo $i;
 done

 echo "------------------------------------------"
 echo "In other way"

 for j in {1..5}
 do 
	 echo " Number is $j"

 done

 echo "------------------------------------------------------------------"

 array=( every word should be in seperate line )

 len=${#array[*]}

 for ((i=0;i<$len;i++)) do
	 echo "${array[i]}"
 done

 path="/home/ubuntu/dir1/nameList.txt"

#let n=1
for k in $(cat $path) do
	 echo "Animals are {$k}"
 done


