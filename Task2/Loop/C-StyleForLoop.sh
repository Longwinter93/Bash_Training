#!/bin/bash
#It is useful for an index and a custom step
Name=("Lucas" "Adam" "Mariusz" "Bozena" "Dorota")
TotalElementOfArrays=${#Name[*]} #Qty of Elements

for ((i=0; i < TotalElementOfArrays; i++ ));
do 
    echo "Name is ${Name[$i]}"
done
echo "A C-loop terminates in 5 number"
for (( i=0; i<=8; i++ )); do 
    if (( i == 5 )); then 
        break 
    fi 
    echo "Iterates over numbers $i"
done;
echo "A C-loop skips 6 number"
for (( i=0; i<=10; i++ )); do 
    if (( i == 6 )); then 
        continue 
    fi 
    echo "Iterates over numbers $i"
done


