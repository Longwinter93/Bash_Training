#!/bin/bash 

cut -d "," -f 1,2 sampletext.txt

echo "I develop my skills at Bash" | cut -d ' ' -f 4

cut -d "," -f 1,2 --complement sampletext.txt