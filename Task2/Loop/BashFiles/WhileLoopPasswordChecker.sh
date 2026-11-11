#!/bin/bash
correct_password="Correct"
attempts=0

#read -sp "Enter Password: " password

while (( $attempts < 3 )) #It executes till the condition is True
do 
    read -sp "Enter Password: " password
    if [[ $password = $correct_password ]]
    then 
        echo "Password is correct"
        break #If a password is correct, the loop terminates
    else 
        echo "Password is not correct."
        ((attempts++))
        

    fi
    [[ $attempts == 3 ]] && echo "Too many attempts. Access Denied"

done