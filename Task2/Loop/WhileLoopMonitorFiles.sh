#!/bin/bash

echo "We constantly monitor how many files are in a folder"
echo "To stop monitoring, you should press CTRL + C - It is Infinite while Loop"
Folder="TxtFiles"

#Infinite while loop
while true 
do 
    QtyOfFiles=$(ls "$Folder" | wc -l)
    echo "Files in a "$Folder" are "$QtyOfFiles""
    sleep 3
done