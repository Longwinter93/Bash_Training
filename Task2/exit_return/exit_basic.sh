#!/bin/bash

name='Lukaszek'
FILE='fileexists.txt'

grep "${name}" "${FILE}"
#We use exit status of grep command to verify if we find this text in a file
#We can do the same with any other commands for example we can use a cp command to create a backup file
if [ $? -eq 0 ]
then 
    echo 'We find Lukaszek in this file'
    exit 0 #success
else 
    echo 'We don''t find Lukaszek in this file'
    exit 1 #incorrect
fi 

#We need to write echo $? to check the status of the exit code

