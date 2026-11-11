#!/bin/bash

echo "We are going to iterate over files in a directory: "
for file in LogFiles/*.txt
do 
    echo "There are $file in this directory"
done; 

echo "We are going to iterate over files that their size is not zero: "
for file in LogFiles/*.txt 
do 
    if [[ ! -s $file ]]; then 
        continue 
    fi 
    echo "This $file have size greather than 0"
done;
echo "We are going to iterate over files that has error in files: "

for file in LogFiles/*.txt
do
    grep "ERROR" "$file" && echo "Error found in $file"
done; 