#!/bin/bash

Names=("Lukasz" "Rafal" "Jerzy" "Andrzej")
Files=("Info1.txt" "Info2.txt" "Info3.txt")

echo "I look for these Names in files: "

for Name in "${Names[@]}"
do 
   
    for File in "${Files[@]}"
    do 
        
        if grep -q "$Name" "$File"; then 
           echo "$Name was found in $File"
           
        else 
            echo "$Name was not found in $File"
            
        fi

    done
    
done;

echo "After finding this information, we are going to do the transformation: "
for Name in "${Names[@]}"
do 
   
    for File in "${Files[@]}"
    do 
        grep "$Name" "$File" | awk -F ',' '{print  $2 " is " $3 " and has this pet: " $4 }'
    done
    
done; 

echo "Loop for all files using Command Output: "

for file in Info1.txt Info2.txt Info3.txt
do 
    for animal in $(cut -d"," -f4 $file)
    do
    echo "Animals are: $animal"
    done
    
done;