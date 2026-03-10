#!/bin/bash

split -l 5 index.txt split_file 
ls
split index.txt -l 4 --verbose
#spliting a index.txt file based on file size
split -b 16 index.txt index
#spliting based on numeric suffix
split -l 4 -d index.txt
#spliting based on a specific number of equal parts
split -n 3 index.txt
#spliting into files called part00 based on lines 
split -d index2.txt part -l 5
#merge these files into one
cat p* > new_large_text
#Counting 
 wc -c new_large_text index2.txt