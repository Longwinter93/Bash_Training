#!/bin/bash

echo "Nested loop: "
for i in {1..3}; do #Outer Loop - it starts to iterate second
    for j in {1..3}; do  # Inner Loop It starts to iterate first
        echo "j: $j"
    done 
        echo "i: $i"
done 
#For each iteration from inner loop, outer loop starts
echo "Nested loop. It should terminate the innermost enclosing loop. It terminates loop if j is equal to 2 "

for i in {1..3}; do 
    for j in {1..3}; do 
        if [[ $j -eq 2 ]]; then 
            break #it exists the innermost loop
        fi
        echo "j: $j"
    done 
        echo "i: $i"
done 

echo "We should terminate the outer loop. It terminates the second enclosing loop: "
for i in {1..3}; do 
    for j in {1..3}; do 
        if [[ $j -eq 2 ]]; then 
            break 2 #it exists the nth enclosing loop
        fi
        echo "j: $j"
    done 
        echo "i: $i"
done 