#!/bin/bash

echo "First method: "
Names=("Lukasz" "Adam" "Leon" "Jerzy" "Rafal" "Kamil")
echo "Original array is ${Names[@]}. The quantity of elements in array: ${#Names[@]}"
#We are going to select every second array of this array
#In this variable, we store each second element of an array: 
EachSecondElement=()
#We store every second element by using for loop:
for (( i=0; i<${#Names[@]}; i+=2 ))
do 
    EachSecondElement+=("${Names[$i]}")
done
#We stored in a EachSecondElement array a few elements. We look at these array/variable:
echo "New Array: " 
for element in "${EachSecondElement[@]}"
do 
    echo "$element"
done
