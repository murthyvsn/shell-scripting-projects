#!/bin/bash
#
set -e

echo "What is this?"
read var
echo "This is a $var"

read -p "What is this $var for? " newVar
echo "This $var is for $newVar"
