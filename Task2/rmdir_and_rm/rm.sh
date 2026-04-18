#!bin/bash

#rm - it removes both empty and non-empty directories. It removes files and directories
#Removing files
touch file1.txt file2.txt
ls *.txt
rm *.txt
#Removing file with prompt
touch file1.txt file2.txt
rm -i file1.txt file2.txt
#Verbose
touch file1.txt file2.txt
rm -v file1.txt file2.txt
#It does not work
mkdir removingbyrm
rm removingbyrm
#It works: -r recurisve
rm -r removingbyrm
#Removing a directory without prompting
mkdir removeone
rm -rf removeone
#Removing multiple directories
mkdir removedir removedir2 removedir3
rm -r removedir removedir2 
#Removing multiple directories - verbose
mkdir removedir removedir2 removedir3
rm -rv removedir removedir2 removedir3  
#Single prompt before deletion only once
mkdir removedir
rm -rI removedir
#Prompting before deletion each time
mkdir removedir removedir2 removedir3
rm -ri removedir removedir2 removedir3  
#Removing directories using glob patterns
mkdir dassad_Luk vcxdvs_Luk trwqwere_Luk
ls *Luk
rm -r *_Luk
#Removing directoring using find 
mkdir dassad_Luk vcxdvs_Luk trwqwere_Luk thu56_Luk
find . -type d -name "*_Luk" -exec rm -r {} +
#Removing all files within the directory using find command and delete the directory
mkdir toremove
touch toremove/file1.txt toremove/file2.txt toremove/file3.txt 
find toremove -type f -delete && rm -r toremove
#Removing empty directory
mkdir emptydirectory
rm -d emptydirectory
#Removing directories and subdirectories
mkdir toremove
touch toremove/file1.txt toremove/file2.txt toremove/file3.txt 
rm -rv toremove
#Removing all files in a directory without removing directory itself
mkdir toberemoved
touch toberemoved/file{1..10}.txt
rm -rf toberemoved/*
#Removing files with dash
touch -- -dashfile.txt
rm -- -dashfile.txt
touch -- -dashfile2.txt 
rm ./-dashfile2.txt
#Removing multiple files
touch text1.txt text2.txt text3.txt
rm text[123].txt