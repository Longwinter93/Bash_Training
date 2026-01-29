#!/bin/bash 

target="Exercise1"
target2="Exercise1/a.sh"

ls $target


if [ -f $target2 ];
then 
	echo "Files in $target2 exist."
else 
	echo "Files in  $target2 does not exist "
fi


