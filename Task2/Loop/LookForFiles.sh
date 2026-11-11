#!/bin/bash

echo "Looking for Files if they are: "
for i in 0{1..5}.txt
do 
    Files="ExampleFile${i}"
    echo "$Files"
    if [ -f "$Files" ]
    then 
        echo "These $Files exist in this directory"
    else 
        echo "These $Files don't exist in this directory"
    fi
done;

echo "We shorten this code: "

for i in 0{1..5}.txt
do 
    Files="ExampleFile${i}"
    echo "$Files"
    [ -f "$Files" ] && echo "These $Files exist in this directory" ||  echo "These $Files don't exist in this directory"
      
done;