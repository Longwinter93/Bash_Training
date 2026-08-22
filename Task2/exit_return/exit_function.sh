#!/bin/bash
#We can call exit in the script either inside or outside a function. It stops the exeuction of the script immediately

FILE=fileexists.txt
#the exit command in a shell script is used to terminate the script and optionally provide an exit status.
basic_function () {
    if [[ -f "$FILE" ]]
    then 
        echo "$FILE exists "
        exit 50
    else    
        echo "$FILE does not exist" 
        exit 52
    fi
}

echo 'If a file exists, a return value should be 50. Otherwise, it should be 52'
basic_function
#This echo below will never be displayed, because the script exits immediately after exit 
echo 'Checking the return value: ' $?
#We need to run echo $? in a terminal to see the exit code status