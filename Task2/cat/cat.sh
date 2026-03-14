#!/bin/bash

#TO DO 
#https://www.cyberciti.biz/faq/linux-unix-appleosx-bsd-cat-command-examples/

cat testing.txt
cat -n testing.txt #how many lines this text file has
cat -b testing.txt
cat -s testing.txt
cat -v testing.txt
cat -E testing.txt
cat -A testing.txt
#We combine files and > shell redirection output
#concatenate two files
cat testing.txt testing2.txt > combinedtestingfile.txt
#Mergin files
cat file1.txt file2.txt file3.txt > mergedfile.txt
#With piping
cat testing.txt | grep "Data"
#Creating a new file and type text directly into the terminal, then press CTRL + D to save and exit
#cat > createnewfile.txt 
echo "New one" > Sampletext.txt
#Appending a new text to this txt file and press Enter and CTRL + D to save and exit
#cat >> Sampletext.txt 
#Open a text file with -
cat -- "-textfile.txt"
#Appending the context of one file to another file
cat file1.txt >> file3.txt
#Showing a file in a reverse order
tac Sampletext.txt
#Read input from a file
cat < mergedfile.txt
