#!/bin/bash 

i=1

target="Exercise"
source="SourceExercise"

while [ $i -le 3 ];
do
	if ! [ -d "$target"$i ]; then 
		mkdir "$target"$i
		echo "These folders $target$i were created"
	else
		echo "These folders $target$i already exist"
	fi 
	((i++))
	
done 


for i in {1..3}
do
	#ls "$source"$i/*.sh	
	cp "$source"$i/*.sh "$target"$i/
	echo "All files with extension sh from a directory $source$i was successfully copied to $target$i directory"
	#ls "$target"$i/*.sh
	echo "Quantity of sh files in a $target$i directory: $(ls $target$i/*.sh | wc -l)"
	
done



for file in "$target"{1..3}/*.sh; do
	if [ -f "$file" ]; then 
		echo "These $file files exist"
	else 
		echo "These $file files do not exist"
	
	fi
	
done 