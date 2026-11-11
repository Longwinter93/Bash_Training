#!/bin/bash

LookForFile=Info4.txt
#Counting the quantity of Lukasz strings in a Info4.txt file 
for file in *
do #Checking if this file exists
   if [ "$file" == "$LookForFile" ] 
        then 
        echo "We found it $file"
        countLukaszName=$(grep -c "Lukasz" $LookForFile)
        echo "Total qty of Lukasz in a ${file} is ${countLukaszName}"
        break #It terminates loop after finding this file with this Name
    #else #It iterates over all files it stops when it found Info4.txt
        #echo "We cannot find this $file"
    fi

done; 