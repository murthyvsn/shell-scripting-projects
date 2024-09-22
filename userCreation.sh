#!/bin/bash
#
set -e
set -o

if [ "${UID}" -ne 0 ]
then
	echo "Execute the program with root user"
	exit 1
fi

echo "No of params: $#"
echo

<<..
if [ "$#" -ne 1 ]
then
	echo "Give Username and comments as paramters for the program"
	exit 1
fi
..

userName="${1}"
shift

comment="${@}"

password=$(date +%s%N)

useradd -c "${comment}" -m $userName

if [ $? -ne 0 ]
then 
	echo "User could not be created"
	exit 1
fi

#echo "$password" | passwd  $userName
echo "${userName}:${password}" | chpasswd

if [ $? -ne 0 ]
then
	echo "Password could not be set"
	exit 1
fi

#Force password change for first login
passwd -e $userName


echo 
echo "Username: $userName"
echo
echo "Password: $password"
echo 
echo "Hostname: $(hostname)"


