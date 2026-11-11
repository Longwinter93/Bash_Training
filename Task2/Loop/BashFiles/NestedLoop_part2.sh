#!/bin/bash

echo 'We copy only two files to 3 Directories'

echo "We are going to remove all directories"
[ -d FirstDirectory  ] && rm -r FirstDirectory
[ -d SecondDirectory  ] && rm -r SecondDirectory
[ -d ThirdDirectory  ] && rm -r ThirdDirectory
echo "We are going to create these directories"
mkdir  FirstDirectory SecondDirectory ThirdDirectory

for file in File{1..2}.txt; do 
    for dir in FirstDirectory SecondDirectory ThirdDirectory ; do 
        cp $file $dir 
        echo "Copy $file to $dir"
    done  
done


