#!/bin/bash
#Look at FurtherResourcesForLearniing.txt so as to develop skills at it

#The while loop is used to perform a given set of commands an unknown number of times as long as the given conditions evaluates to true

##The while loop is used to perform a given set of commands an unknown number of times as long as the given condition evaluates to true
#The usage of the while loop is to read files, data stream or variable line by line
#The while loop runs as long as the condition is true
#It is useful to keep going until a condition changes

i=0 #a variable

while [ $i -le 5 ] #condition - it controls how many times the loop runs. It is True - it executes
do #if conditions is true, commands are executed. Otherwise, it terminates
    echo Number: $i  #commands
    ((i++)) #incrementing by one. A counter variable and increment it each iteration 
done

#Condition forms for arithemtic evaluation - purely numeric
i=0
while (( i < 10 ))
do 
    echo "Number: $i"
    ((i++))
done; 

#Instead of controllig the while loop with a condition, we use input redirection "done < "$file""
#to pass a file to the read command which controls the loop.
#Thanks to it, the while loop run until the last line is read
file=file.txt

while read -r line
do 
    echo "$line"
done < "$file" #input redirection to pass a file to the read command

#One line code:
x=1 ; while [ $x -le 5 ]; do echo "It would be $x  times till the condition is True. $x > 5" $(( x++ )); done  

y=1 
while [ $y -le 4 ]
do 
    echo "Another syntax $y"
    y=$(( $y + 1 ))
done
echo "Reading multiple fields per line at once: "
printf "luki 33 teacher\nrafi 36 plumber\nmarcel 31 driver\nandrzej 30 architect" | while read -r name age profession
do 
    echo "$name is $age and is $profession"
done

echo "Multiple conditions in While Loop: "

number1=1
number2=1
while [[ $number1 -lt $number2  || $number1 -eq $number2 ]];
do
    echo $number1
    ((number1++))
done