#!/bin/bash

FILE="shadow.txt"

if [ -e $FILE ]; then
	echo "Shadow Password are enabled."
else 
	echo "File does not exist"
fi

if [ -w $FILE ]; then
	echo "You have permissions to edit a shadow.txt file"
else 
	echo "You do not have permissions to edit a shadow.txt file"
fi