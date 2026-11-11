#!/bin/bash

echo "We are going to remove all directories"
[ -d FirstDirectory  ] && rm -r FirstDirectory
[ -d SecondDirectory  ] && rm -r SecondDirectory
[ -d ThirdDirectory  ] && rm -r ThirdDirectory
echo "We are going to create these directories"
mkdir  FirstDirectory SecondDirectory ThirdDirectory


echo 'We are going to copy three files to three different directories'

for f in File{1..3}.txt 
do
    echo "$f"
done; 

for dir in FirstDirectory SecondDirectory ThirdDirectory 
do 
    echo "$dir"
done;

for file in File{1..3}.txt; do 
    for dir in FirstDirectory SecondDirectory ThirdDirectory; do 
        cp $file $dir 
        echo "Copy $file to $dir"
    done  
done
