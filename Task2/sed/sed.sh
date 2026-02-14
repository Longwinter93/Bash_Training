#!/bin/bash

sed 's/photo/picture/' sed4.txt
#save changes in a file
echo -e '\nSave changes in a file'
sed -i 's/photo/picture/g' sed.txt
cat sed.txt
#Save changes to a new file
sed 's/like/love/g' sed.txt > sed2.txt
cat sed2.txt
#Look at difference
sed 's/Luke/Lukasz/' sed.txt
echo -e '\nWithout another lines: '
sed -n 's/Luke/Lukasz/p' sed.txt
#Using Extended Regular Expressions
sed -r 's/(Luke|Longwinter)/Example/g' sed3.txt
#Using a script file
sed -f script.sed sed3.txt 
sed -l 10 'l' sed3.txt
#Adding a prefix to a line:
sed 's/^/Prefix: /' sed5.txt
#Change only second occurrence:
sed -z 's/like/love/2' sed.txt
#From 3 occurrence
sed -z 's/like/love/3g' sed.txt
#Replacing in a specific line
sed '6 s/like/love/' sed.txt
#Duplicate patterns:
sed 's/like/love/p' sed.txt
#Replace based on lines
sed '1,3 s/like/love/' sed6.txt
sed '3,$ s/like/love/' sed6.txt
#Removing a line
sed '2d' sed6.txt
#Adding a new line
sed '3a\AddingNewLines' sed6.txt
sed '3i\AddingNewLines' sed6.txt
#Processing multiple files
sed  's/love/like/' sed.txt sed6.txt
#Using cat
cat sed5.txt | sed 's/Line/Look/' > output.txt