#!/bin/bash

Folder=AllDirectory/

[ -d AllDirectory/CopyFilesFromSubUsingNestedLoop ] &&  rm -rf AllDirectory/CopyFilesFromSubUsingNestedLoop
mkdir AllDirectory/CopyFilesFromSubUsingNestedLoop

for subdirectory in "$Folder"/*; do 
    #We skip one directory to avoid having duplicate values
    if [ "$subdirectory" == "AllDirectory//CopyAllFilesUsingFindAndForLoop" ]; then 
        continue 
        
    fi
    if [ -d "$subdirectory" ]; then 
        basename $subdirectory 
    fi 

    for file in "$subdirectory"/*; do 
        if [ -f "$file" ]; then 
        basename $file
        cp $file AllDirectory/CopyFilesFromSubUsingNestedLoop/
        fi 
    done 
done 
