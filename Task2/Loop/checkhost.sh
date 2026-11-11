#!/bin/bash

sites=(google.com github.com api.local)

for site in ${sites[@]}
do 
    if ping -c 1 $site
        then echo "$site is UP" #if condition is true
    else 
        echo "$site is DOWN" #if condition if false

    fi
done 

echo "Using While Loop for Checking Hosts. If it does not respond for a few minutes click CTRL + R"
site2=google.com 

while true; do 
    if ping -c 1 "$site2"; then 
        echo "Ping to $site2 works. Exit the loop"
        break 
    else 
        echo "Ping to $site2 does not work. Retrying.."
        sleep 2
    fi 
done