#!/bin/bash

#It executes a set of commands repeatedly as long as given condition evalutes to false (non-zero exit status).
#until [ condition ] = while [ ! condition ]
#Once the condition becomes true, the loop stops
#It is the inverse of while.
#It is useful with a sleep command to wait until a process starts and to make attempts/retry to undertake tasks/execute commands to avoid an infinite loop
#It is useful to wait for certain events to occur 
echo "The loop stops if a variable counter is greater than 6 - because it is TRUE - zero exit status"

counter=0

until [ $counter -gt 5 ]
do
    echo "Counter: $counter"
    ((counter++))
done;

#One the terminal
#counter=0; until [ $counter -gt 5 ]; do echo "Counter: $counter; ((counter++)); done

number=0
until (( number > 3 ))
do 
    echo "It counts: $number"
    ((number++))
done; 
#String comparison
echo "You should write Lukasz to terminate the loop"
a=""

until [[ $a == "Lukasz" ]]
do 
    read -r -p "Write Lukasz: " a
done 