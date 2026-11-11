#!/bin/bash

[ -d AllDirectory ] && rm -rf AllDirectory

echo "We copy all directories to a AllDirectory"
for dir in */
do 
    if [ -d "$dir" ]; then 
        mkdir -p AllDirectory
        echo "$dir was copied to AllDirectory/ directory"
        cp -r "$dir" AllDirectory/
    fi 
    
done;