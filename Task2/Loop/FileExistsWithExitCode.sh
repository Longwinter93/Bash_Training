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
echo "Look for a SUPER text in txt files"

for i in 0{1..3}.txt
do 
    Files="ExampleFile${i}"
    echo "$Files"
    grep --color "SUPER" "$Files"
    if [ $? -eq 0 ]
    then 
        echo "This $Files have SUPER word"
    else 
        echo "This $Files don't have SUPER word"
    fi
done;

