#!/bin/bash

#Command substitution - it runs a shell command and store its output to a variable
for animal in $(cut -d"," -f4 Info1.txt) #It iterates over the output of the cut command
do 
    echo "Animals are: $animal"
done;

for nameoffiles in $(printf 'lukasz.txt\nrafal.txt\ngrazyna jerzy.txt\n')
do 
    echo "Name: $nameoffiles"
done;