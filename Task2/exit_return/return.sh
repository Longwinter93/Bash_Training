#!/bin/bash

#return codes are used within shell functions to indicate the functions' status
#We can return in a function. It stops the execution of the function immediately
#The aim of return is to exit from a Bash function
#It returns the status of the last command executed

FILE=fileexists.txt

basic_function () {
    if [[ -f "$FILE" ]]
        then echo "$FILE exist" 
        return 0 #success
    else    
        echo "$FILE does not exist"
        return 1 #failed
    fi
}



echo 'If a file exists, a return value should be 0. Otherwise, it should be 1'
basic_function
echo 'Checking the return value: ' $?
