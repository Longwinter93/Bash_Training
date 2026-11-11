#!/bin/bash
echo "Increment a value: "
Counter=0
until [ $Counter -gt 3 ]
do 
    echo "Increment a value $Counter"
    ((Counter=Counter+1)) #Increment by 1 - Another syntax let "i=i+1"
done;
echo "Another syntax: "
Counter=0
until [ $Counter -gt 3 ]
do 
    echo "Increment a value $Counter"
    Counter=$((Counter+1)) #Increment by 1
done;
echo "Another syntax: "
Counter=0
until [ $Counter -gt 3 ]
do 
    echo "Increment a value $Counter"
    ((Counter+=1)) #Increment by 1
done;
echo "Another syntax: "
Counter=0
until [ $Counter -gt 3 ]
do 
    echo "Increment a value $Counter"
    let "Counter+=1" #Increment by 1
done;

echo "Decrement a value: "
Counter=15
until [ $Counter -le 0 ]
do 
    echo "Increment a value $Counter"
    ((Counter=Counter-5)) #Decrement by 5
done;
#Another syntax
echo "Another syntax: "
Variable=30
while [ $Variable -ge 5 ]
do 
    echo "Number: $Variable"
    let "Variable-=5" #Decrement by 5; Another syntax ((i-=1))
done;
echo "Another syntax: "
Variable=30
while [ $Variable -ge 5 ]
do 
    echo "Number: $Variable"
    ((Variable-=5)) #Decrement by 5
done;
echo "Another syntax using operators. It only increments or decrements a value by one: "
x=5
y=$((x++))
echo "$x and $y" #It assigns a value to y, then  increments a x variable
a=10
b=$((++a)) #it increments variable a by 1, then assigns this new value to b
echo "$a and $b"
#
echo "Increment variables using For Loop"
Counter=2
for number in {1..5}
do 
    echo "$number and we increment variables in For Loop: $Counter"
    ((Counter++))
done

#
echo "Increment value using postfix increment process: "
echo "We use ++ and -- Operators and increments this operand Counter by 1. We start from 5"
Counter=5
while true; do
    if [[ "$Counter" -gt 10 ]]; then 
        exit 1
    fi 
    echo "Variable: $Counter"
    ((Counter++)) #It increments values automatically and only by 1 
done

