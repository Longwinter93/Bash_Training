#!/bin/bash

source="SourceExercise"
target="Exercise"


for i in {1..3}
do
	#ls "$source"$i/*.sh	
	cp "$source"$i/*.sh "$target"$i/
	echo "All files with extension sh from a directory $source$i was successfully copied to $target$i directory"
	#ls "$target"$i/*.sh
	
done



