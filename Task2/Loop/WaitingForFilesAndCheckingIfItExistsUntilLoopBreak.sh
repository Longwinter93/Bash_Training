#!/bin/bash
#It could be useful for looking for objects 
#break statement breaks the loop immediately after a few attempts instead of running forever
Dir="DirectoryFiles/Files1.txt"

echo "It loops in a directory to find a $Dir. If it finds, the loop will terminate"
echo "This script checks if a specifiec file was created in this Directory. We wait till a file appears"
echo "We also implemented attemps to avoid having an infinite loop"


try=0

until [ -f $Dir ] #while loop with condition
do
    ((try++))
    if [ $try -ge 3 ]; then #it has 3 attempts
        echo "It has 3 chances to find a file - there is no this file in $Dir"
        break #After 3 tries a loop was terminated because a variable is greater than 3. It evaluates to TRUE
    fi 
    echo "It was $try trial"
    sleep 5

done; 

[ -f $Dir ] && echo "After  $try attemps a file was found on $Dir"

#We need to remove this Files1.txt from this directory. After execution of this script, we should create this file in this directory
#Thanks to it, we will be able to see how this script works