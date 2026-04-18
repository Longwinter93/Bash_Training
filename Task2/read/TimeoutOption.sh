#!/bin/bash

read -r -t 10 -p "Enter your surname: " surname 
if [[ $? -gt 128 ]]; then
    echo "Timeout occurred!"
    surname="(default)"
else 
    echo "Hello, $surname!"
fi