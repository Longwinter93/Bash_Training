#!/bin/bash

correct_password="Correct"
attempts=0

#read -sp "Enter Password: " password

until (( $attempts > 2 )) #It executes till the condition is False
do 
    read -sp "Enter Password: " password
    if [[ $password = $correct_password ]] 
    then 
        echo "Password is correct"
        break
    else 
        echo "Password is not correct."
        ((attempts++))
        

    fi
    [[ $attempts == 3 ]] && echo "Too many attempts. Access Denied"

done

echo "We have also a short version: "
until  [[ $password == "Correct" ]] #It is executed if this condition is False
do 
    read -sp "Enter password: " password 
done 
echo "Password is correct"
