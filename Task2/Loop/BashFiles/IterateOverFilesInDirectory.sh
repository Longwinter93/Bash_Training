#!/bin/bash
echo "Iterating over list of filenames: "
for file in *
do 
    if [ -f $file ]; then 
        ls -lh $file
    fi
done;

echo "Iterate over list of .txt file in a current directory"

for file in *.txt 
do 
    if [ -f $file ]; then 
        ls -lh $file 
    fi
done;

echo "Only two files: "
for file in ListOfCommands.txt Checking.txt
do 
    if [ -f $file ]; then 
        ls -lh $file 
    fi 
done;

echo "Iterating over all sh files and showing number of lines, words and bytes "
#Using Command Substitution to iterate over output of this command
for file in $(ls *.sh | sort )
do 
    if [ -f $file ]; then 
        echo $(wc $file)
    fi
done; 
