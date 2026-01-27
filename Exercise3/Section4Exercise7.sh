#!/bin/bash 

my_function() {
    local result=42
    echo "$result"
}

result=$(my_function)
echo "The result is: $result"