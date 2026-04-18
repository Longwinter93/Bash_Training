#!/bin/bash

#Comparing a string against more than two or three values using CASE 

VAR="Luke Longwinter"

case $VAR in 
    "Luke")
        echo "Name was found"
        ;;
    "Luke Longwinter" | "Shortsummer")
        echo "Surname was found"
        ;;
    "Adam")
        echo "Second name was not found"
        ;;
    *)
        echo "No match found"
        ;; 
esac
