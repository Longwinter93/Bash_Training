#!/bin/bash
#It includes information about which lines in the files must be changed so that they become identical
#It shows line-by-line differences

rm -r script.py
diff file1.txt file2.txt > diff_file.txt
#Look at differences in a color way
diff --color=always file1.txt file2.txt
#Normal Format
diff file1.txt file2.txt
#Context Format
diff -c file1.txt file2.txt
#Unified Format
diff -u file1.txt file2.txt
#Finding only additions
diff -u file1.txt file2.txt | sed -n '/^+[^+]/ s/^+//p'
#Finding only removals
diff -u file1.txt file2.txt | sed -n '/^-[^-]/ s/^-//p'
#Fast method to compare:
diff -sq file1.txt file2.txt
diff -sq file7.txt file8.txt
#Ignore case
diff -ui file1.txt file2.txt
#Ignore case
diff -i file3.txt file4.txt
#Case sensitive
diff file3.txt file4.txt
#Comparing directories recursively
diff -r firstfolder secondfolder
#Brief
diff -rq firstfolder secondfolder
#Same
diff -s Same1.txt Same2.txt
diff -s file1.txt file2.txt
#Comparing two files side by side
diff -y file1.txt file2.txt
#Ignoring whitespace differences
diff file5.txt file6.txt
diff -w file5.txt file6.txt
#Using patch with diff
touch script.py
echo 'pri('Hello World')' > script.py
cat script.py
cp script.py script_broken.py
cat script_broken.py
#Corrected script
cat corrected_script.py
diff -u script.py corrected_script.py
#We create a patch
diff -u script.py corrected_script.py > patched_script.diff
#We apply a patch
patch script.py < patched_script.diff
#Code fixed:
cat script.py
