#!/bin/bash

#Patching is a mechanism to modify a piece of data by applying a set of diff-like changes to it
diff a1.txt a2corrected.txt
diff --unified a1.txt a2corrected.txt > 01.txt.diff
cat 01.txt.diff
#Using patch commands to apply changes to the main file
patch a1.txt 01.txt.diff
cat a1.txt
#Using diff to see differences between two files nad save it to a patch file
diff -u hello.py hello_new.py > hello.patch
cat hello.patch
#Applying the patch to the original file
patch hello.py hello.patch
#Using dry run before applying
cp hello_original.py hello.py
patch --dry-run hello.py hello.patch
#Preparing a backup file hello.py.orig before patching
cp hello_original.py hello.py
patch -b hello.py hello.patch
cat hello.py.orig
#Restoring the original file
cat hello.py
patch -R hello.py hello.patch
cat hello.py
#Create a new patch file
cat FirstScript.py
cat SecondScript.py
diff -u FirstScript.py SecondScript.py > hello2.patch
cat hello2.patch
#Doing a dry run test. It does not modify a file, but it checks potential errors before modyfing this file
patch --dry-run < hello2.patch
#Applying a hello2patch file to the original file. It should be the same like SecondScript
#Creating backup files
patch -b < hello2.patch
patch -b -V numbered < hello2.patch
#Reversing the orginal file by undoing changes
patch -R <  hello2.patch
#Taking look at changes
cat FirstScript.py
cat SecondScript.py