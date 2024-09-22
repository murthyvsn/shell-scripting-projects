#!/bin/bash

#Script on how to use variables

readonly name="Murthy"
age=29
height=5.6

echo "My name is $name, age is $age and height is $height"

host=$(hostname)
list=$(ls)

echo "Name of this machine is $host and list of directories are $list"

name="Murthy VSN"
echo "Name is $name"

