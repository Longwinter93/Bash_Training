#!/bin/bash
#help continue
#It controls the execution of a For Loop. It alters the flow of a loop. It steers Bash loops
#continue exits the current iteration and passes control to the next one. It skips to the next iteration. It jumps straight to the next iteration
#It drops the rest of the loop body for that iteration and moves on to the next item in the list
Names=('Marek' 'Adam' 'Marcin' 'Andrzej' 'Lukasz' 'Piotr' 'Daniel' 'Radoslaw')
echo "${Names[@]}"


echo 'If the loop encounters Lukasz, the continue statement skips this name and moves to the next iteration'

for name in "${Names[@]}"
do 
    if [[ "$name" == 'Lukasz' ]] #If a loop encounters Lukasz it skips and go up to the next iteration for Loop
    then 
        continue 
    fi 
    echo "Name: $name"
done 

echo 'It is an example of a continue statement. The loop skips the iteration once the current name is equal to Lukasz and moves to the next iteration'

echo "It ignores the rest of the commands and it continues the loop from the top again by using continue. It goes for the next value in the list"
echo "It iterates through the name. If there are even numbers, the loop goes to the top and iterates again"

i=1
for name in "${Names[@]}"
do
    echo "This $name has this number: $((i++))"
    if [ $((i%2)) -eq 0 ]
    then 
        echo "This has an even number: "
        continue
    fi
done

echo 'Shows only numbers that are divided by 5'
for i in {1..50}; do 
    if [[ $(( $i % 5 )) -ne 0 ]]; then 
        continue
    fi 
     echo "This number is divisible by 5: $i"
done; 