#!/bin/bash

read -r -a MY_ARR <<< "I learn bash"

for i in "${MY_ARR[@]}"; do 
    echo "$i"
done 