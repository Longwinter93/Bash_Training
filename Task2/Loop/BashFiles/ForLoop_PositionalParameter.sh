#!/bin/bash
#We don't specify in. If we don't specify in after a Name variable - list, Loop gets it from the positional parameter
#To run this script, you need to write this in a terminal: ./ForLoop_PositionalParameter.sh A B C D
i=1 

for Name 
do 
    echo "This name $Name has this number $((i++))"
done;
#$((i++)) it increments by 1 a variable i 