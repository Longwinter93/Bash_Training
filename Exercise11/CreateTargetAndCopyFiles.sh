#!/bin/bash

directory="FileSource1"
directory2="FileTarget1"

if ! [ -e "$directory2" ] ; then 
	mkdir FileTarget1 
fi


if [ ! -d "$directory" ]; then 
	exit 1
fi

ls

for file in "$directory"/*.sh; do
	if [ -f "$file" ]; then 
	echo "$file"
	
	cp "$file" "$directory2"
	
	
	fi
	
done 


echo "Files from $directory was successfully copied to $directory2"




