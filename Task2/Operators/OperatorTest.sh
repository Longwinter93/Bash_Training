#!/bin/bash

#test command  = []
#[[  ]] operator - It supports additional string, arithemtic operations (regular expressions, matching, logical and operators and comparison operators)
test 10 -eq 20 && echo "true" || echo "false"

if [ 10 -eq 20 ]; then 
    echo "True"
else 
    echo "False"
fi

FILE=FileExists.txt
echo "We use test command ["
if [ -e "$FILE" ];then 
    echo "This $FILE exists"
else 
    echo "This $FILE does not exist"
fi

echo "We use [[. We don't need using quotes"

if [[ -e $FILE ]];then 
    echo "This $FILE exists with"
fi
x=10

if [ $x -eq 10 ]; then 
    echo "$x is equal to 10 using [ operator"
fi

if [ $x == 10 ];then 
    echo "$x is equal to 10 using [[ operator"
fi
