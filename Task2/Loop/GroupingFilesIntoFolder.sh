#!/bin/bash
#Try to select individual file with extension in for loop and then copy it to a folder
#Try to add these command  in variables and use if to select. Try to use continue or break
#In a CurlyBrackets.sh script is information how to do it using While Loop
[ -d BashFiles ] && rm -rf BashFiles
[ -d TxtFiles ] && rm -rf TxtFiles


FindingAllTxtFiles=$(find . -name "*.txt" -type f)
FndingAllBashFiles=$(find . -name "*.sh" -type f)


echo "We add all txt files from a Loop directory and its subdirectory: "
for file in $FindingAllTxtFiles
do 
    if [ -f $file ]; then 
    mkdir -p TxtFiles
    echo "This $file was copied to TxtFiles/"
    cp $file TxtFiles/
    fi
done;

echo "We add all sh files from a Loop directory and its subdirectory: "

for file in $FndingAllBashFiles
do 
    if [ -f $file ]; then 
    mkdir -p BashFiles
    echo "This $file was copied to BashFiles/"
    cp $file BashFiles/
    fi
done;

QtyOfTxtFiles=$(ls TxtFiles/ | wc -l)
QtyOfBashFiles=$(ls BashFiles/ | wc -l )
echo "There are $QtyOfTxtFiles files in TxtFiles/ directory and there are $QtyOfBashFiles files in BashFiles/"


