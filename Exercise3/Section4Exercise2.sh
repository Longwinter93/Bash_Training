#!/bin/bash 

echo "Executing this script: $0"
echo "We display the number of files in these directory: $@"

for argument in $@
do
	echo "$argument:"
	ls $argument | wc -l
done


#We need to put positionl arguments -> ./Section4Exercise2.sh etc var usr/bin