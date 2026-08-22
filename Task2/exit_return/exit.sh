#!/bin/bash

#The aim of exit is to exit from a Bash Script.
#Bash uses the exit code of the last command, therefore it is better to set them ourselves to avoid confusion
#Thanks to it, we have better control over how out scripts work and can handle errors more effectively
#return and exit can be added to error handling
#We can close an interactive Bash session typing exit and press Enter
#Each shell command returns an exit code when it terminates, whether it succeeds or fails.
#The exit code of 0 indicates the command completes successfully, a non-zero value means an error was encountered
#The special variable $? holds the exit status of the last executed command
false
echo 'Status of false statement: '$?

true 
echo "Status of true statement: " $?

date
echo $?
echo 'Date command completed successfully, therefore exit code is zero:' $?
echo 'Running ls on a nonexistent directory, therefore exit code is greater than 0:'
ls nonexistendirectory
echo $?
#If we execute a multi-command pipeline, the exit status of the pipeline is the last command
echo 'The exit status of the pipeline is the last command. It should be 3'
exit 1 | exit 2 | exit 3
echo $?
#Capturing the exit code of every command in a pipeline we should use $PIPESTATUS array:
echo 'We can pass value to a exit in order to obtain a desired exit code. I pass 4, 5, 6, thus exit code should be 4,5,6'
echo 'We capture the exit code of every command in a pipeline using PIPESTATUS array. It should be 4 5 6'
exit 4 | exit 5 | exit 6
statuses=("${PIPESTATUS[@]}") #Saving the array after the pipeline
echo "${statuses[0]}" #the exit code of the first command - 4
echo "${statuses[1]}" #the exit code of the second command - 5
echo "${statuses[2]}" #the exit code of the third command - 6
#Using Command Groups and store the result of exit status of each command to a file:
{ grep 'file' myfile.txt; echo $? > exit_status_1; } | { grep 'nofile' myfile.txt; echo $? > exit_status_2; }
#Exit vs return
#exit terminates the entire script regardless of where it is called, return exits only the current function and returns control to the caller
#We can use return inside functions and exit at the script level
#It is necessary to explicitly use exit code after each execution of commands in a Bash Script and Function 
#for error handling and integration with other scripts or processes that call a Bash Script.
#We should also use it for clarity and robustness
#Bash might automatically use the exit code of the last command, 
#It is vital to set them ourselves to avoid confusion.
#As a result, we have better control over how our scripts work and can handle errors more effectively.
#It helps us to leave a script or a shell session and gives a code to tell how execution went
