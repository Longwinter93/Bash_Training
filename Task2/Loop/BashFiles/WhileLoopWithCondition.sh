#!/bin/bash

#Using [[  ]] when the condition involves string patterns or && || operators

echo 'This while loop terminates if it encounters third line in a text file'

file=file.txt 

while read -r line && [[ "$line" != "This is third  line" ]] #It is a condition. If it executes to True, loop will terminate
do
    echo "$line"
done < "$file" 
