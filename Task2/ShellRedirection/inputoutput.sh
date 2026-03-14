#!/bin/bash

#Stdin - Reading Operation
#Stdout - Writing Operation

#Create a file - Redirection symbol > Sending standard output to file - it writes display its output
echo "Simple Text" > textfile.txt
touch textfile2.txt
echo "Simple Text" > textfile2.txt
echo "Second line" >> textfile2.txt
#Standard Input stdin  - FD 0  - Redirection symbol <  Reading standard input from a file (the defaul is keyboard)
cat < textfile.txt
#Standard Output - FD 1 - Sending data to a file (the default is screen)
#Redirection symbol >> it appends standard output to a file
date >> textfile.txt
cat textfile.txt
#Standard Error - FD 2 - Redirection symbol 2> Sending all error messages (standard error) to a file (the default is screen)
#It writes all system error messages
rm remove.txt 2> error.txt
cat remove.txt 
#Sending a file contents to grep. Pipe the output of one command into the input of another
cat textfile.txt | grep "Simple"
