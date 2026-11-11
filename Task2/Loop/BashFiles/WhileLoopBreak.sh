#!/bin/bash

#break and continue statements control the while loop execution and the flow of the loop
#a break statement terminates/breakes on condition
#a break statement terminates the current loop and passes program control to the command that follows the terminated loop.
echo "A break statement is used to terminate the loop when a certain condition is met"
echo "The execution of the loop will be terminated once the current iterated items is equal to 5"
i=0
while [ $i -lt 10 ]
do 
    echo "Number: $i"
    ((i++))
    if [[ "$i" == '5' ]]
    then 
        break 
    fi 
done 
#A break statement with reading file
cat file.txt
echo 'While Loop terminates when we encounter this line: "This is fourth line" in a file.txt'
file=file.txt 

while read -r line 
do 
    if [[ $line == "This is fourth  line" ]]
    then 
        break 
    fi 
    echo "$line"
done < "$file"
echo "While loop terminates when condition is True. It terminates when it encounters "This is fourth  line " in a "$file""
while IFS= read -r line && [[ "$line" != "This is fourth  line" ]]
do 
    echo "$line"
done < "$file"


#Reading input from the terminal. Infinite while loop with break
echo 'It is mandatory to write l to exit the loop'
while true; 
do read -p "Enter a 'l' to quit: " input 
    if [ "$input" = "l" ]; 
    then 
        break 
    fi 
done;

