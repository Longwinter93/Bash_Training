#!/bin/bash

touch File{1..5}.txt
mkdir NewFolderWithJpgFiles
ListOfFile=$(ls *.txt)
#echo $ListOfFile
Array_TextFile=($ListOfFile)
echo "${Array_TextFile[@]}"

for i in "${Array_TextFile[@]}"; do
    echo "$i should be ${i%.txt}.jpg in a NewFolderWithJpgFiles"
    cp "$i" NewFolderWithJpgFiles/"${i%.txt}.jpg"
done

#mv "$i" "${i%.txt}.jpg"