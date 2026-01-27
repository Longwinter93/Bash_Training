#!/bin/bash 

target="Exercise"

for file in "$target"{1..3}/*.sh; do
	if [ -f "$file" ]; then 
		echo "These $file files exist"
	else 
		echo "These $file files do not exist"
	
	fi
	
done 