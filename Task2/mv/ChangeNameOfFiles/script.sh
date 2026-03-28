#!/bin/bash

touch file1.txt file2.txt file3.txt file4.txt

for file in *.txt; do mv "$file" "test_$file"; done