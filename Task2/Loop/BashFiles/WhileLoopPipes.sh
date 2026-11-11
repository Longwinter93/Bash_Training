#!/bin/bash

#If we pipe data into a while loop, the loop runs in a subshell
#any variable changes inside the loop are lost once the loop exists:
echo 'A variable holds 0'
count=0
seq 1 5 | while read -r n; do
    ((count++))
done
echo "$count"

#To store the variable in the current shell, we should use input redirection or process substitution instead:
echo 'We use process substitution to store the variable'
echo "A variable holds 8"
count2=0
while read -r n; do 
    ((count2++))
done < <(seq 1 8)
echo "$count2"
