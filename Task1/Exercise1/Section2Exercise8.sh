#!/bin/bash
echo "Executing script : $0"
echo "We are going to report if it is a file, directory or another type of file"
echo "We accept these arguments: $@" 

for argument in $@
do
	if [ -f $argument ]; then 
		echo "$argument is a regular file"
	elif [ -d $argument ]; then 
		echo "$argument is a directory"
	else
		echo "$argument is other type of file"
	fi

	ls -l $argument
done
