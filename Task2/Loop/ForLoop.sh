#!/bin/bash

#Look at FurtherResourcesForLearniing.txt so as to develop skills at it

#For Loop - it iterates over a list of items (strings, array element and a range). It is helpful for automating repetitive operations - automating repetitive tasks, processing data and other ones
#It is useful for automating repetitive tasks and perform a processing task (for example processing lists)

#name - var name, Lukasz Adam Andrzej Marcin Maciek - a list of values
for name in Lukasz Adam Andrzej Marcin Maciek #for each name in this list Lukasz Adam Andrzej Marcin Maciek
    do echo "Names: $name" #command - to do sth
done;
echo "One-liner: "
#One-liner:
for name in Lukasz Adam Andrzej Marcin Maciek; do echo "Names: $name" ;done


#Using Sequence Expressions to iterates thorugh numbers: {start..end}
for i in {0..10}
do
    echo "Numbers: $i"
done; 
#Increment by 25
for i in {0..100..25}
do 
    echo "Numbers incremeneted by 25: $i"
done; 
#Iterate over arrays 
MyFamily=('Wife' 'Mother' 'Father' 'Brother' 'Sister-in-law' 'Nephew' 'Niece')
for member in "${MyFamily[@]}";
do 
    echo "Perfom iterates over elements in an array: $member"
done; 
#The C-Style for Loop syntax. i++ - It increments i by 1 
#The C-Style for loop uses arithemtic initialization, condition and step expressions.
#Each one is separated by semicolon ; 
#It is better suited for counter-based iteration, where we need to have control over start, end and step explicitly.
#It runs for a defined number of iterations
for ((i=1; i <=5; i++))
do 
    echo "C-Style for Loop: $i"
done;
#Comma in the bash C Style for loop. 
#We can add multiple values by separating these ones with comma "," in initialization (expression is evaluted), condition (check if expression is true, execution) and step expressions (it increments a loop)
#In this case, we increment a value that is not used in a condition
#In the initialize section and the increment section of the bash C Style for Loop,
for ((i=2, j=4; i <=12 ; i++, j=j+2))
do 
    echo "Number $i: $j"
done;
#Three variables
for ((i=2, j=4, l=6; i <= 8, j <= 7; i++, j=j+1, l=l-1 ))
do 
    echo "Numbers: $i: $j: $l"
done;

echo 'Adding numbers to variables: '
for i in 0{1..4}
do 
    Variables="Lukasz${i}"
    echo "$Variables"
    #echo "touch $Variables.txt"
done;
echo "We are going to place all commands from Bash loop to a file. It is good for debugging"
echo "We save all commands from For Loop to a file, then we can execute it: "
for i in 0{1..4}
do 
    Variables="Lukasz${i}"
    
    echo "touch $Variables.txt"
done > Example.txt #We can save it also as .sh and we can easily execute this script!

echo "Doing combination of fixed word, range and set"

for Name in {PL-,ENG-}-names{1..3}
do 
    echo "Current name is $Name"
done 



