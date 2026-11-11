#!/bin/bash

#break and continue statements control the while loop execution and the flow of the loop
#A continue statement skips iteration. A continue statemnt will cause execution to return to the beginning of the loop and continue with the next iteration
#A continue statement skip the rest of the current iteration and moves to the next one in the loop
echo "A continue statement terminates the current iteration of a loop and passes program control to the next iteration of the loop"
echo "If the current iterated item is equal to 3, the continue statement cause execution to return to the beginning of the loop and to continue with next iteration."

i=0 
while [ $i -lt 5 ]
do 
    ((i++))
    if [[ "$i" == 3 ]] #If a loop encounters Lukasz it skips and go up to the next iteration While Loop
    then 
        continue 
    fi 
    echo "Number: $i"
done; 

cat file.txt
echo "The current iteration of loop skips this line: "This is fourth  line" in a file.txt"
file=file.txt 

while read -r line 
do 
    if [[ "$line" == "This is fourth  line" ]]
    then 
        continue 
    fi 
    echo "$line"
done <"$file"


echo "It skips iteration and go for next: "
c=1
while [ $c -le 5 ]; do #we iterate only 5 times
    read -p "Please to write n if you want to iterate it once again. You have 5 attempts: " choice 
    if [ "$choice" == "n" ]; then 
        ((c++))
        continue #After writing n - it skips current iteration and it iterates once again due to continue till it iterates 5 times - condition True
    fi 
    echo "$c"
    ((c++))
done

