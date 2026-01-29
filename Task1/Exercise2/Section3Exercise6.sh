#!/bin/bash

filename=$1

if [ -f "$filename" ]
then
	echo "$filename is a file and it exists. Exit status $?"
	exit 0
elif [ -d "$filename" ]
then 
	echo "$filename is a directory and it exists. Exit status $?"
	exit 1
else
	echo "Exit status $?"
	exit 2
fi 


	
#a file -> TextFile.txt
#a directory -> /FileFolder/Directory