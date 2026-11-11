#!/bin/bash
echo "Nested loop: "
for i in {1..3}; do #outer loop
    for j in {1..3}; do  #inner loop 
        echo "i: $i, j: $j"
    done 
done; 

#An inner loop starts to iterate and it iterates with the first variable from outer loop. 
echo "Nested Loop with Continue. It skips the iteration of inner loop if inner loop reaches 2"
for i in {1..3}; do #outer loop
    for j in {1..3}; do  #inner loop 
    if [[ $j -eq 2 ]]; then 
        continue   #Skip to the next iteration of the innermost loop
    fi
        echo "i: $i, j: $j"
    done 
done; 


echo "Nested Loop with Continue. It skips the rest of the current iteration of the outer loop: "
for i in {1..3}; do #outer loop
    for j in {1..3}; do  #inner loop 
    if [[ $j -eq 2 ]]; then 
        continue 2  #Skip to the next iteration of the nth enclosing loop
    fi
        echo "i: $i, j: $j"
    done 
done; 

