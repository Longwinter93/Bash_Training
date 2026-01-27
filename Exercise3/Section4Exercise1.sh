#!/bin/bash

file_count() {
	local NumberOfFilesInCWD=$(ls | wc -l)
	echo "The number of files in the present working directory: $NumberOfFilesInCWD"
}

file_count 
