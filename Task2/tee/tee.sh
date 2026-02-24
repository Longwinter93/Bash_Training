#!/bin/bash

#Counting the number of lines in a txt file, then save it and append to the new file and show the result
wc -l teeexample.txt | tee -a teeexample2.txt
#Counting the number of line in a txt file, then save it to the new file and show the result
wc -l file1.txt | tee file2.txt
wc -l file1.txt | tee file3.txt

ls -l | tee FilesInFolders.txt

tar -cf tar/tarfiles.tar tarfile1.txt tarfile2.txt tarfile3.txt 
cd tar
tar -xvf tarfiles.tar | tee NameOfTarFiles.txt
cd ..
echo "These words will be in two text files" | tee Ffile1.txt Sfile2.txt > OnlyInOneFile.txt

