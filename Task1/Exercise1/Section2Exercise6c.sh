#!/bin/bash
echo "We are going to report if it is a file, directory or another type of file"
read -p "Please to write a name: " nameoffile

if [ -e $nameoffile ]; then 
	echo "$nameoffile is a regular file"
elif [ -d $nameoffile ]; then 
	echo "$nameoffile is a directory"
else
	echo "Other type of file"
fi

ls -l $nameoffile