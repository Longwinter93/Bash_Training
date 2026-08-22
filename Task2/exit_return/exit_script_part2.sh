#!/bin/bash

echo 'This line will be printed, because we do not have exit before this command'
exit 0
echo 'This line will not be printed'
#The exit after first echo caused the script to exit with the status of 0.
#We can check the exit status of this script by writing echo $? command in a terminal