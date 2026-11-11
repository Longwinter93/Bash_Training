#!/bin/bash

AnalysisFile="Info4.txt"
CountOfLukasz=0

echo "We are going to count how many Lukasz is on $AnalysisFile"
echo "Printing all lines in a file"
while read -r line; do 
    echo "$line"

done < "$AnalysisFile"
echo "Printing only lines with Lukasz in a file"
while read -r line; do 

    if [[ $line == *"Lukasz"* ]];
    then 
        ((CountOfLukasz++))
        echo $line
    fi
done < "$AnalysisFile"

echo "There are $CountOfLukasz of Lukasz in a $AnalysisFile"