#!/bin/bash



find . -type d | for dir in */; do
	echo "$dir"
done 

