#!/bin/bash

NEWVARIABLE="Lukasz"

if [ "$NEWVARIABLE" = "Adam" ]
then
	echo "It is not the beautiful name"
elif [ "$NEWVARIABLE" = "Lukasz" ]
then 
	echo "It is the best beautiful name "
else 
	echo "No name"
fi