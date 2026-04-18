#!/bin/bash

Number1=5
Number2=5

#Integer Comparison Operators: -eq, -ne, -lt, -gt, -ge, -lt, -le
echo "We check if two numbers $Number1 and $Number2 are equal using Integer Comparison Operators"
#Single brackets
if [ "$Number1" -eq "$Number2" ]; then
    echo "Numbers are equal"
else 
    echo "Numbers are not equal"
fi 

Number3=8
Number4=6
if [ "$Number3" -ne "$Number4" ]; then 
    echo "Numbers are not equal"
else 
    echo "Numbers are equal"
fi

if [ "$Number3" -gt "$Number4" ]; then 
    echo "$Number3 is greater than $Number4"
fi

if [ "$Number3" -ge "$Number4" ]; then 
    echo "$Number3 is greater than or equal to $Number4"
fi

Number5=2
Number6=3

if [ "$Number5" -lt "$Number6" ]; then 
    echo "$Number5 is less than $Number6"
fi

if [ "$Number5" -le "$Number6" ]; then 
    echo "$Number5 is less than or equal to $Number6"
fi
