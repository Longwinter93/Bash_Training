#!/bin/bash

value1=10
value2=20

if [ "$value1" -gt 5 ] && [ "$value2" -lt 30 ]; then 
    echo "Both conditions are true"
else
    echo "At least one condition is false"
fi