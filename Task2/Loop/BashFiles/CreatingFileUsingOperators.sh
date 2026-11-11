#!/bin/bash
#We are going to increment values:
echo "We are going to create files using Operators: "
Operands=8
while true; do 
    if [[ "$Operands" -gt 14 ]]; then 
        exit 1 
    fi 
    echo "These files IncrementValuesByOperators$Operands.txt will be in this directory Sequence"
    touch Sequence/IncrementValuesByOperators$Operands.txt
    ((Operands++)) #It increments values by 1
done;