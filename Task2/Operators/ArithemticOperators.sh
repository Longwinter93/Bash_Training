#!/bin/bash


#Arithmetic Operators: ==, !=, >, >=, <, <=
echo 'We are going to compare integers using arithmetic operators inside parentheses'
Number1=5
Number2=2


if (( Number1 > Number2 )); then 
    echo "$Number1 is greater than $Number2"
fi