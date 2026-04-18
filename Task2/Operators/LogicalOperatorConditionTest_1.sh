#!/bin/bash

a=24
b=48

echo 'First test with &&'
if [ "$a" -eq 24 ] && [ "$b" -eq 48 ]
then
    echo 'Test works'
else 
    echo 'Test fails'
fi;

echo 'Second test with &&'
if [[ $a -eq 24 && $b -eq 27 ]]
then
    echo 'Test works'
else 
    echo 'Test fails'
fi; 

c=98
d=47
echo 'Third test with ||'
if [ "$c" -eq 98 ] || [ "$d" -eq 47 ]
then
    echo "Test works"
else
    echo "Test fails"
fi;

echo 'Fourth test with ||'
if [[ "$c" -eq 98  ||  "$d" -eq 47 ]]
then
    echo "Test works"
else
    echo "Test fails"
fi;

#These logical operators do not return different outputs if there are in if statement or alone

false && echo foo || echo bar 


true || echo foo && echo bar
