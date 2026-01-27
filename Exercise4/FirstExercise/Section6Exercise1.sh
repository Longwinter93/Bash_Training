#!/bin/bash

DATEVAR=$(date +%F)
Files=$(ls *.jpg)
for JPGFILE in *.jpg
do
	echo "Showing file $JPGFILE"
	mv $JPGFILE $DATEVAR-$JPGFILE
done

for JPGFILE in *.jpg
do
	echo "Showing file after renaming $JPGFILE"
done

