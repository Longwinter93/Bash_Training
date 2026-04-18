#!/bin/bash

#Bash xargs with copy files to a folder and exec with find 
#Usage exec with find commands
touch a{1..5}.txt
touch b{1..5}.jpg
echo 'Lucas' > a1.txt
echo 'Lucas' > a2.txt
echo 'Lucas' > a3.txt
find . -name "*.txt" -type f
grep 'Lucas' a1.txt
#Look for Lucas in txt files
grep -l 'Lucas' *.txt
#Finding txt files with this Lucas name
find . -name "*.txt" -type f -exec grep -l Lucas {} \;
#Moving
mkdir TxtFilesWithLucas
touch sample.txt
mv sample.txt TxtFilesWithLucas
#Moving all jpg files to jpg directory
mkdir jpgdirectory
find . -name "*.jpg" -type f -exec mv {} jpgdirectory \;
#Copy all jpg files to previous directory
cd jpgdirectory
find . -name "*.jpg" -type f -exec cp {} .. \;
cd ..
#Moving only txt  files with Lucas to a TxtFilesWithLucas directory
grep -l "Lucas" *.txt | xargs -i  mv {} TxtFilesWithLucas/
#Manipulating file descriptos.
#Redirecting stdout (FD 1) to the log file
a=$(date +%F)
rm logfile-$a.txt
touch logfile-$a.txt
exec 1>>logfile-$a.txt
echo "This will be wrriten into log file rather than terminal"
echo "This too"
   
#Redirecting stderror to the same file
exec 2>&1
datee
echo "Above command is wrong, error will be logged in log file"
date
echo "Output is correct. This command will be logged to txt file"
#Another commands, once this command finishes, the shell is gone - it shuts down
exec -ls -l
#Redirecting all outputs to file instead of terminal
rm OutputFromExec.txt
touch OutputFromExec.txt
exec > OutputFromExec.txt
echo "Hello world"
echo "Output from exec!"
ls 
cat  OutputFromExec.txt
