#!/bin/bash


echo "We are going to remove all directories"
[ -d FirstDirectory  ] && rm -r FirstDirectory
[ -d SecondDirectory  ] && rm -r SecondDirectory
[ -d ThirdDirectory  ] && rm -r ThirdDirectory
echo "We are going to create these directories"
mkdir  FirstDirectory SecondDirectory ThirdDirectory
echo 'We are going to copy three files to three different directories'

Directories=('FirstDirectory' 'SecondDirectory' 'ThirdDirectory')

for file in File{1..3}.txt; do 
    for dir in "${Directories[@]}"; do 
        cp $file $dir 
        echo "Copy $file to $dir"
    done  
done