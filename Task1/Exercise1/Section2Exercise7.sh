#!/bin/bash
echo "Executing script : $0"
echo "We are going to report if it is a file, directory or another type of file"
echo "We accept this argument: $1" 

FILE=$1 

if [ -f $FILE ]; then 
	echo "$FILE is a regular file"
elif [ -d $FILE ]; then 
	echo "$FILE is a directory"
else
	echo "$FILE is another type of file"
fi

ls -l $FILE 