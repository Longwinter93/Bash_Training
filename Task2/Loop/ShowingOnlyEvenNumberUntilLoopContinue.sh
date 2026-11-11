#!/bin/bash
#continue skips odds numbers

n=0

until [ $n -ge 10 ]
do 
    ((n++))
    if (( n % 2 != 0)); then 
        continue #It shows only even numbers
    fi 
    echo "Even numbers: $n"
done

