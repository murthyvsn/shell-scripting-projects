#!/bin/bash
#
set -e 

read -p "Give the values for a and b " a b
echo "The value of a is $a and value of b is $b"

let add=$a+$b
echo "Addition of the values $add"

echo "Subtraction of the values $(($a-$b))"

let mul=$a*$b
echo "Multiplication of the values $mul"

echo "Division of the values $(($a/$b))"

read -p "Give the symbol of the operation which you want to perform? " o

echo "The result is $(($a$o$b))"
