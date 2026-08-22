#!/bin/bash

MyNewArray=("First Element" "Second Element" "Third Element")
echo "We use the full array as one word using asterisk"
#%s\n - it adds a newline character at the end of the line
printf 'Word -> %s\n' "${MyNewArray[*]}"
echo "We use arrays entries using @"
printf 'Word -> %s\n' "${MyNewArray[@]}"
echo "Splitting the input into a list of words based on IFS values by default contain spaces and tabs without using double quotes"
printf 'Word -> %s\n' ${MyNewArray[@]}

#It returns once all values
for value in "${MyNewArray[*]}"; do echo "$value"; done
#It returns individually each value
for value in "${MyNewArray[@]}"; do echo "$value"; done
echo "A new array: "
MyNewArray2=("First" "Second" "Third" "Fourth" "Fifth" "Sixth")
echo ${MyNewArray2[@]}
echo "Let's shuffle elements in an array"
shuf -e ${MyNewArray2[@]}
#Slicing start:count
echo "Slice it"
echo ${MyNewArray2[@]:2:3}
echo ${MyNewArray2[@]:0:2}
echo ${MyNewArray2[@]:1}
echo ${MyNewArray2[@]::3}
#s
echo "The qty of elements in an array: "
echo ${#MyNewArray2[@]}
MyNewArray3=() 
(( ${#MyNewArray3[@]} > 0 )) && echo "This array is not empty" || echo "This array is empty"
[[ ${MyNewArray2[@]} =~ "First" ]] && echo "Yes" || echo "No"
#Iterating over key
echo "Iterating over keys"
for key in "${!MyNewArray[@]}"
do
    echo "Key for a MyNewArray array is $key"
done 
echo "Iterating over values"
for values in "${!MyNewArray[@]}"
do 
    echo "Value for a MyNewArray array is: ${MyNewArray[$values]}"
done 

