#!/bin/bash

#Controling the flow of execution:
#&&  each command only runs if the previous one was successful 
#|| it handles failure scenarios 
#; it allows you to run multiple commands regardless of their success or failure
#Chaining multiple commands
#Combinining Operators
#Test before deployment using echo

#It chains commands together. The second command executes only if the first one succeeds.
#The second one relies on the success of the first:
#It works
mkdir new_directory2 && cd new_directory
touch new_directory2/file.txt && ls new_directory
#Executing multiple commands in sequence. Each command executes successfully only if previous one succeeds
mkdir new_directory && cd new_directory && touch newtextfile.txt && echo "Hello, it is a new file with a new directory" > newtextfile.txt
#It doesn't work
mkdir new_directory && ls new_directory
cd non_existent_directory && echo 'It will not print'
false && echo 'Hello!'
true && echo 'Hello!'
#It allows us to execute second command if the first one fails
mkdir new_directory || echo "This directory exists"
false || echo 'The first command fails, thus it executes'
cd non_existent_directory || echo 'Failed to change directory'
true || echo 'Hello!'
false || echo 'Hello!'
#This operator is used to execute multiple commands sequentially regardless of the success or failure of any command:
mkdir new_directory; ls; echo "It executes"
false ; echo 'This command executes regardless'
#Use cases
mkdir new_directory && ls || echo 'We cannot execute ls commands, because new_directory exists'
false || echo 'This will also run'
true || echo 'This will not  run'
echo 'This will run' && (false || echo 'This will also run')
#Difference
[ -e a.txt ] && echo "file exists" #It does not show echo, because this file does not exist
[ -f a.txt ] && echo "file exists" #It does not show echo, because this file does not exist
status=$?
echo $status
touch a.txt
[ -e a.txt ] && echo "File exists"
[ -f a.txt ] && echo "File exists"
rm a.txt
[ -f a.txt ] ; echo "File exists"

#Running a command in a background
echo "This process is run in the background" &
jobs

