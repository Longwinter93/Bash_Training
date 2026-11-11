#!/bin/bash

#List of txt files:
ls *.txt > list 
for i in $(cat list);do cp "$i" "BackupFiles/$i.bak"; done 

ls BackupFiles/*.txt*
