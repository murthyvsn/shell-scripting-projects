#/bin/bash
#
set -e

myArray=(1 20 11.5 Hi "hello world")

echo "Printing the full array ${myArray[*]}"

echo "Values in 2nd index is ${myArray[2]} 3rd is ${myArray[3]} and 4th is ${myArray[4]}"

#length of an array
echo "Length of the array ${#myArray[*]}"

#Printing array from specific range
echo "Printng 2 values from 1st index ${myArray[*]:1:2}"
echo "Printing values from 2nd index ${myArray[*]:2}"

#Adding or updating new values to the array
myArray+=( 100 "Adding new values" check 99.9)

echo "Printing with newly added values ${myArray[*]}"
