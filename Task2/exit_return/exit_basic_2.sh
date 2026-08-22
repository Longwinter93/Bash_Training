#!/bin/bash

FILE="fileexists.txt"
read -r -p "Enter a name to look for in ${FILE} :"  text

if grep "${text}" "${FILE}"
then 
    echo "This name is found in $FILE and the exit code status: $?"
    exit 0 #success
else 
    echo "This name is not found in $FILE and  the exit code status: $?"
    exit 1 #incorrect
fi 
