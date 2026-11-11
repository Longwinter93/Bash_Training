#!/bin/bash
counter=1
for file in *
do
    echo $file
    echo $counter
    echo ${file}_${counter}
    ((counter++))
done