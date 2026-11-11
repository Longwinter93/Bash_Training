#!/bin/bash

i=1 

Names="Adam Marcin Lukasz Bartek Maciej"

for Name in $Names
do 
    echo "This name $Name has this number $((i++))"
done;
#$((i++)) it increments by 1 a variable i 

#Using Unix/Linux commands output as list values via backticks:
i=0
for name in `cat ListOfCommands.txt`
do
    echo "We increment this $name from a Bash command by $((i++))"
done; 
#Looping through file in a specified directory
for directory in SecondDirectory/*
do 
    echo "$directory"
done;