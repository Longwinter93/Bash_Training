#!/bin/bash
#Input and output in Linux are streams. Input - someone writes commands in a keyboard. Output - it goes to the screen.
#Stream is a fundamental concept for handling input, output, and communication between processes. 
#A stream represents a sequence of bytes that can be read from or written to.
#Streams provide a uniform interface for data transfer and processing across various input/output operations.
#Stdin - Reading Operation (entry point)
#Stdout - Writing Operation (output of stream of resulting commands)
#Sdterr - it an error that will be displayed
#If we work with streams, we will have the processing (filtering, concatenation of a process with the help of commands such as grep,tr,cat,awk and other ones) of this stream
#2>&1 - it redirects file descriptor 2 (stderr) to the same destination as file descriptor 1(stdout)
#The & before 1 tells Bash that 1 is a file descriptior, it is not a filename
#It redirects stderr(2) to stdout(1). &1 mentions to the shell that a destination file is a file descriptor and not a file name
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
#Redirecting stderr to stdout (redirecting both streams)
echo "Redirecting stderr to stdout" > textsample.txt 2>&1
echo "Redirecting stderr to stdout Appending" >> textsample.txt 2>&1
echo "Redirecting stderr to stdout Shorthand Appending" &>> textsample.txt 
#Redirecting (both streams) stdout and stderr to a file in a single operator
echo "Redirecting stdout and stderr to a file in a single operator" &> textsample2.txt
echo "Redirecting stdout and stderr to a file in a single operator" &> textsample3.txt
#Piping both stdout and stderr, redirect stderr to stdout before the pipe
cat error.txt 2>&1 | grep 'error' #both output and error messages are passed to grep which filters for lines containing errors
cat error.txt |& grep 'error'
#Discard error messages 
cat error.txt 2> /dev/null
#Discard all output
cat error.txt &> /dev/null
#/dev/null is a special device file that discards all data is written to it. If we redirect output to /dev/null,
#it effectively sliences the command. It discards any output of a script that we use by redirecting to /dev/null