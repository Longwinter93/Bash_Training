#!/bin/bash
echo "We are going to report if it is a file, directory or another type of file. Please to add extensions to this"
read -p "Please to write a name of file or directory: " nameoffile

if [ -f $nameoffile ]; then 
	echo "It is a regular file"
else
	echo "It is not a regular file"
fi

if [ -d $nameoffile ]; then
	echo "It is a directory"
else 
	echo "It is not directory"
fi 

ls -l $nameoffile