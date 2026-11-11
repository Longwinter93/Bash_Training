#!/bin/bash

echo "We are going to look for a Xavier string in files. We look for only the first match"

Dir=ProcessFilesDir/*.txt

for file in $Dir; do 
    if [[ ! -r "$file" ]]; then #If we find a file without read permission, we skipped it.
        continue 
    fi 
    if grep -q "Xavier" "$file"; then  #we use a grep command with q (quiet) flag
        echo "This string was found in $file"
        break #It terminates the loop after the first match
    fi
done