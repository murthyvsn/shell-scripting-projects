#/bin/bash
#
set -e

var="This code is for string operations"

lengthVar=${#var}
echo "Length of variale $lengthVar"

echo "var string in upper case ---- {$var^^}"
echo "var string in lower case ---- {$var,,}"

#Replacing a string
newVar=${var/code/program}
echo "This is newVar ---- $newVar"

#Slicing a string 
echo "Sliced var string ---- ${var:5:4}"


