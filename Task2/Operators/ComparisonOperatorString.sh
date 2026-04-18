#!/bin/bash

Variable1="Lucas"
Variable2="Adam"
#String Comparison Operators:  ==, !=, <, >, =~, -z, -n
#Single bracket uses = - a test command, double bracket uses == in Bash script

echo "We are going to compare two strings using a single bracket"
if [ "$Variable1" = "$Variable2" ]; then
    echo "Strings $Variable1 and $Variable2 are  equal"
else 
    echo "Strings $Variable1 and $Variable2 are not equal"
fi 

echo "We use a double bracket"

Variable3="Longwinter"
Variable4="Shortsummer"

#Double brackets are more powerful in Bash. 
#It supports regex/pattern matching, it does not need using quotes in variables
#It supports glob-style-pattern matching
#it allows < > without escaping

if [[ "$Variable3" == "$Variable4" ]];then 
    echo "Strings $Variable3 and $Variable4 are equal"
else 
    echo "Strings $Variable3 and $Variable4 are not equal"
fi

echo "We use logical operators"
Variable5="Poland"
Variable6="Czech Republic"

[[ "$Variable5" == "$Variable6" ]] && echo "Strings $Variable5 and $Variable6 are equal" || echo "Strings $Variable5 and $Variable6 are not equal"


echo "Verify if a pattern is in strings (match)"
#The pattern is not quoted so that Bash interprets the wildcards
VAR="Luke Longwinter"
if [[ $VAR == *"Adam"* ]]; then 
    echo "It is there"
else 
    echo "It is not there"
fi

if [[ "$VAR" == L* ]]; then 
    echo "A variable starts with L"
else 
    echo "It does not start with L"
fi

NameOfFiles='file1.txt'
if [[ "$NameOfFiles" == file[0-1].txt ]]; then
    echo "$NameOfFiles matches the pattern"
else 
    echo "$NameOfFiles does not match the pattern"
fi

echo "We use regex operator"

NextVAR="Luke Longwinter is the best"
if [[ $NextVAR =~ .*Longwinter*. ]]; then 
    echo "a Longwinter string is on a variable:  $NextVAR"
fi


echo "Verify if a string is empty"
Variable7=""
Variable8="Test"
if [[ -z $Variable7 ]]; then
    echo "$Variable7 string is empty"
fi

if [[ -n $Variable8 ]]; then 
    echo "$Variable8 string is not empty"
fi

echo "Case-insensitive comparison"

Variable9="Luke"
Variable10="luke"

if [[ "${Variable9,,}" == "${Variable10,,}" ]]; then #it converts strings to lowercase
    echo "Strings $Variable9 and $Variable10 are equal (case-insensitive)"
fi

if [[ "${Variable9}" == "${Variable10}" ]]; then 
    echo "Strings $Variable9 and $Variable10 are  equal (case-sensitive)"
else
    echo "String are $Variable9 and $Variable10 not equal (case-sensitive)"
fi
