#!/bin/bash

touch -c non_existent_file.txt
ls -l
touch -a filetouch.txt
stat filetouch.txt
ls -l
touch -m filetouch.txt 
ls -l
touch -t 202501010000 filetouch.txt
touch -d '24 March 2023 11:02' filetouch2.txt
ls -l
touch -m filetouch.txt
ls -l
touch *.txt
ls -l
touch nextfile.txt nextfile2.txt
ls -l
touch folder/test{1..5}.txt
touch folder/test{a..i}.txt