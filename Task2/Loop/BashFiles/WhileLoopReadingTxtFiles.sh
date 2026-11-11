#!/bin/bash

file=ExampleFile.txt
echo "We are going to read this file line by line: "

while IFS= read -r line 
do 
    echo $line 
done < "$file"

echo "We are going to store output in two separate fields: "
while IFS=' ' read -r firstfield secondfield 
do 
    echo "$firstfield is $secondfield"
done < "$file"

cat ExampleFile2.txt

file2=ExampleFile2.txt
echo "A separator is -"
while IFS='-' read -r firstfield secondfield 
do 
    echo "$firstfield is $secondfield"
done < "$file2"