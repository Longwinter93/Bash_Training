#!/bin/bash

#Look at IFS. It has a default value - it has tab 
echo -n "$IFS" | cat -ET
#Change to a new line - we see dolar sign
IFS=$'\n'
echo -n "$IFS" | cat -ET

arr=()

while read line; do 
    arr+=("$line")
done < WorkWithMapFile.txt

echo "${arr[@]}"
#Using read
read -a secondexamplearray -d X < WorkWithMapFile.txt
echo "${secondexamplearray[@]}"

#Using Loop
arr2=()
for line in $(cat WorkWithMapFile.txt); do
    arr2+=("$line")
done 
echo "${arr2[@]}"
#Using mapfile
mapfile -t arr3 < WorkWithMapFile.txt
echo "${arr3[@]}"
#Using cat
array_example=($(cat WorkWithMapFile.txt))
echo "${array_example[@]}"
#Using for loop
for value in "${array_example[@]}"; do 
    echo "$value"
done