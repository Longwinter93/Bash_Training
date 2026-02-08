#!/bin/bash

find newdirectory

find ./newdirectory -name sample.txt

find ./secondirectory -name *.txt

find ./secondirectory -name *.csv

find -name "*.csv" -type f

find -not -name "*.csv" -type f

find ./thirddirectory -empty 
#Look for directory
find . -type d

find .. -type d
#Look for files
find -type f
#Look for txt files that contain a Lukasz word
find ./ -type f -name "*.txt" -exec grep 'Lukasz' {} \;
#look for file that were modified on their modification time - files modified in the last 7 days:
find ./ -mtime -7
#Files modified in the last one day
find ./ -mtime -1