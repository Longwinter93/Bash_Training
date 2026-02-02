#!/bin/bash

for f in 1 2 3
	do file=$(mktemp)
	echo "Writing file $file"
	echo "My contents >> $file"
done 