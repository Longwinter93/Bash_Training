#!/bin/bash

declare -a Friends=(
    [0]=Lucas
    [1]=Adam
    [2]=Marek
    [3]=Andrzej
    [4]=Andrzej
)
#Verify if a Bash Variable is an array
declare -p Friends
echo "${Friends[@]}"
echo "${Friends}"
#Accessing Array Elements using index
echo "${Friends[-1]}"
#Printing elemnts from a particular index. Such as, from second
echo "${Friends[@]:2}"
echo "Friends = ${Friends[@]}"
#Slicing
BestFriends="${Friends[@]:2:3}"
echo "BestFriends are = ${BestFriends[@]}"
#Replacing Lucas with Lukasz
echo "${Friends[@]/Lucas/Lukasz}"
#Printing a second index
selected_index=2
echo "${Friends[$selected_index]}"
echo "${Friends[@]}" 
#Looking for number of occurrences in this array
echo "${Friends[@]}" | grep -c "Lucas"
#Reassignint elements:
echo "${Friends[0]}"
Friends[0]="Lukasz"
echo "${Friends[0]}"
#Declaring a simple array
arr=()
echo $arr
#Populating an array dynamically
fruits=()
fruits+=("apple")
fruits+=("banana" "cherry")
echo "${fruits[@]}"
#Copy of array
CopyFruits=("${fruits[@]}")
echo "${CopyFruits[@]}"
#Combined array
Combined_Array=("${fruits[@]}" "${CopyFruits[@]}")
echo "${Combined_Array[@]}"




