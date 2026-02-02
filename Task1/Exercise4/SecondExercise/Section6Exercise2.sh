#!/bin/bash
DATEVAR=$(date +%F)
read -p "Please enter a file extension: " filextension
read -p "Please enter a file prefix: (PRESS ENTER FOR $DATEVAR): " prefix
prefix=${prefix:-$DATEVAR}

UserFileExtension=$(ls *.$filextension)

for FILE in $UserFileExtension
do
	echo "Showing file $FILE"
	mv $FILE $prefix-$FILE
	echo "Renaming $FILE to $prefix-$FILE"
	
done
