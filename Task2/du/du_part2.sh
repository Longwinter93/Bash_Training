#!/bin/bash

#Finding the 5 largest file in the directory 
#Combined find with du:

cd ..
find . -type f -exec du -h {} + | sort -hr | head -5
find . -type f -exec du -h {} \; | sort -hr | head -5
#Showing the time of the last modification of files or directories
du --time -h
du --time -h */*.sh
du --time -h */*
#Showing only files in a directory within last modification of files
find . -type f -exec du --time -ah {} + 
echo "We use xargs instead of exec"
find . -type f | xargs -I {} du --time -ah {}
cd .. 
echo "Comparing multiple directory totals"
du -csh Task1/ Task2/ Task3/ Task4/ | sort -rh
echo 'Looking for only xargs files or directories'
du -ah ./Task2 | grep -E '*xargs'