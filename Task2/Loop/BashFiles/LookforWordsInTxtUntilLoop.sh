#!/bin/bash

String="Lukasz"
File=Checking.txt
attempt=0
max_attemp=3

until grep $String $File #this command needs to be evaluted to True to terminate the loop. While loop with command
do 
    ((attempt++))
    if [ $attempt -ge $max_attemp ]; then #We give 3 attemps to look for it
        echo "We cannot find $String"
        exit 1  
    fi
    echo "We tried to find $String in $File. Waiting for it.."
    sleep 2
done

echo "We finally found $String in $File"
