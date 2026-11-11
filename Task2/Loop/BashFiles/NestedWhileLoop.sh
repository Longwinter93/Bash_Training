#!/bin/bash

#Look at FurtherResourcesForLearniing.txt so as to develop skills at it
#A powerful tool for automating complex data processing tasks

echo "While nested loop: "
OuterLoop=0
while [ $OuterLoop -le 2 ]
do 
    InnerLoop=0

    while [ $InnerLoop -le 2 ]
    do 
        echo "It is from While Loop Outer "$OuterLoop". It is from While Loop Inner "$InnerLoop""
        InnerLoop=$((InnerLoop+1)) 
    done 

    OuterLoop=$((OuterLoop+1))
done

echo "We are going to read line by line txt files: "

for file in $(ls Info{1..5}.txt) #It iterates over txt files
do 
    echo "Processing this file $file"
    while read line #it reads line by line iterated files
    do 
        echo "Processing line: "$line""
    done < $file
done