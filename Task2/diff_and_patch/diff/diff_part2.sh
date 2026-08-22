#!/bin/bash

diff firstfolder secondfolder 
diff -s firstfolder secondfolder
#Checking the avilability of file types and exclude txt files
diff -x '*.txt' firstfolder secondfolder
#Including only pdf files
diff firstfolder secondfolder | grep ".pdf"
#Comparing contents of two directories and show files that are different
diff -q firstfolder secondfolder
#Comparing a few files
diff --side-by-side --from-file file8.txt file9.txt file10.txt
diff --side-by-side --to-file file8.txt file9.txt file10.txt
#Comparing files side by side
diff --side-by-side firstfolder/ secondfolder/
#Comparing two directories using Process Substitution to compare the output of the directories 
diff <(ls firstfolder) <(ls secondfolder)
diff <(echo -e "This\nis\na\ntext") <(echo -e "This\nis\na\nfile")
#Unified format
diff -u <(echo -e "This\nis\na\ntext") <(echo -e "This\nis\na\nfile")
#Side by side format
diff -y <(echo -e "Luke\nLongwinter\nis\ndeveloper") <(echo -e "Luke\nLongwinter\nis\nyoung")
#Showing output as an ed script
diff -e <(echo -e "Luke\nLongwinter\nis\ndeveloper") <(echo -e "Luke\nLongwinter\nis\nyoung")
#Comparing line by line
diff file11.txt file12.txt
diff -q file11.txt file12.txt
#Sorting and comparing line by line
sort file11.txt > sortedfile11.txt
sort file12.txt > sortedfile12.txt
diff -q sortedfile11.txt sortedfile12.txt
diff -q sortedfile11.txt sortedfile12.txt
#Using Diff with Patching. We changed file13.txt to have identicalthe content of this file as file14.txt 
diff -u file13.txt file14.txt 
diff -u file13copy.txt file14copy.txt 
#Redirecting output to patch
diff -u file13copy.txt file14copy.txt > changesfile1314.patch
patch < changesfile1314.patch
#Creating an archive files to compare compressed files
tar -czvf file15.tar.gz file15.txt
tar -czvf file16.tar.gz file16.txt
zcat file15.tar.gz
zcat file16.tar.gz
#Comparing two gzipped files
diff -u <(zcat file15.tar.gz) <(zcat file16.tar.gz)
#The difference in colourfull ways
diff --color -u file1.txt file2.txt
