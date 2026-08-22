#!/bin/bash

fruits=("apple" "banana" "cherry" "date" "elderberry")

echo "First Fruit ${fruits[0]}"

#Joining all elements with first char of IFS
IFS=','
echo "CSV: ${fruits[*]}" #If we use * symbol, the elements of the array are a single word separated by characters - in this case ,
#Saving ls output as an array of files
arr=( $(ls) )
echo "${arr[@]}"
echo "We store a list of items in an array using read (separated by space)"
read -a listofitems
echo "These values were entered ${listofitems[@]}"
#Removing out txt files using parameter expansion slash / - Pattern matching
files=(file1.txt file2.txt file3.jpg file4.jpg file5.pdf file6.pdf file7.txt)
without_txt_files=("${files[@]/*.txt/}")
echo "Without txt files: "
echo "${without_txt_files[@]}"
#Transforming arrays using parameter expansions
declare -a TransformedArray=("Luke Longwinter" "is" "a great person" "and" "very" "very very" "bright")
echo "Before Transformation Array:  ${TransformedArray[@]}"
echo "After Transformation Array. It replaces only first occurrence: ${TransformedArray[@]/very/extremely}"
echo "After Transformation Array. It replaces all the occurrences of a string ${TransformedArray[@]//very/extremely}"
echo "Removing very string: ${TransformedArray[@]//very}"
echo "Uppercasting sentence: ${TransformedArray[@]^} and uppercasting all characters ${TransformedArray[@]^^}"
echo "Lowercasting sentence ${TransformedArray[@],} and lowercasting all characters ${TransformedArray[@],,}"
#Array with printf
arr=(Adam Andrzej Alan) 
echo "The qty of an array ${#arr[@]} and the whole array ${arr[@]}"
printf '%s\n' ${arr[@]}
printf '<%s>\n' ${arr[@]}