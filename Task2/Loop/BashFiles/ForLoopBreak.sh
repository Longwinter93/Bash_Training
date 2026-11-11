#!/bin/bash
#help break
#It controls the execution of a For Loop. It alters the flow of a loop
#break  exits the loop when a specific condition is met. It leaves the enclosing loop

Names=('Marek' 'Adam' 'Marcin' 'Andrzej' 'Lukasz' 'Piotr' 'Daniel' 'Radoslaw')
echo "${Names[@]}"


echo 'The loop terminates if the current item is equal to Lukasz'

for name in "${Names[@]}"
do 
    if [[ "$name" == 'Lukasz' ]]
    then 
        break 
    fi 
    echo "Name: $name"
done 

echo 'It is an example of a break statement. The loop terminates once the current name is equal to Lukasz!'
echo "This loop terminates once a name has number 4"
i=1
for name in "${Names[@]}"
do 
    echo "This $name has this number $((i++))"
    if [ $i -eq 4 ]
    then 
        break 
    fi
done;