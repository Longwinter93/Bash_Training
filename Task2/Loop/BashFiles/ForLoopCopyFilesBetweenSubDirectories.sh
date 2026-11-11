#!/bin/bash


[ -d AllDirectory/CopyAllFilesUsingFindAndForLoop ] &&  rm -rf AllDirectory/CopyAllFilesUsingFindAndForLoop

mkdir AllDirectory/CopyAllFilesUsingFindAndForLoop

for file in $(find AllDirectory/ -type f); do 
    echo "$file"
    cp $file AllDirectory/CopyAllFilesUsingFindAndForLoop/
done 
