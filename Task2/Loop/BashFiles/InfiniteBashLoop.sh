#!/bin/bash

i=1;
for (( ; ; ))
do 
    echo "It is an infinite loop. Press CTRL + C to stop it"
    sleep $i 
    echo "Number: $((i++))"
done; 
