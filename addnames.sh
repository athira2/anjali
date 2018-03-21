#!/bin/sh

if [ $# -ne 2 ]
then
	echo "The no of arguments are incorrect"
else 
	echo "The no of aruguments are correct"
fi

a=$1

if [ -f $a ]
then
	echo $a" exists" 
else
	echo $a" doesnt exists"
fi

s=$( grep "$2" "$1" )
if [ "$s" =  "$2" ]
then
	echo $2 " exists in " $1

else 
	echo "$2" >> "$1"
	cat "$1"
	echo "Added the username successfully"
fi

