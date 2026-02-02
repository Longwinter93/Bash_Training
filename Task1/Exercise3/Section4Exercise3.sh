#!/bin/bash 

echo "Executing this script: $0"
echo "We display the number of files in these directory: $1"



file_count() {
	local Directory=$1
	local NumberOfFilesInCWD=$(ls $Directory | wc -l)
	echo "${Directory}"
	echo "$NumberOfFilesInCWD"
}

file_count etc
file_count var
file_count usr/bin
