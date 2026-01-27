#!/bin/bash 

echo "Executing this script: $0"
echo "We display the number of files in these directory: $@"

function filecount() {
for argument in $@
do
	echo "$argument:"
	ls $argument | wc -l
done
}

filecount etc var usr/bin

