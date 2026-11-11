#!/bin/bash

rm -rf Animals/
[ -d Animals/ ] || mkdir Animals/
[ -d Animals/RafalLukasz ] || mkdir Animals/RafalLukasz
[ -d Animals/RafalLukasz/NameFromFiles ] || mkdir Animals/RafalLukasz/NameFromFiles
#rm -r Animals/ 

echo "Add all Animals for all names separately"

for Name in $(awk -F"," '{print $2}' *.txt)
do 
    
    grep "$Name" *.txt | awk -F"," '{print $4}' > Animals/$Name.txt

done 

echo "Preparing only for Lukasz and Rafal separately"

for Name in $(awk -F: '{print $1}' Names.txt)
do 
    grep "$Name" *.txt | awk -F"," '{print $4}' >> Animals/RafalLukasz/$Name.txt

done;

echo "Preparing only for Lukasz and Rafal in a one file "
for Name in $(awk -F: '{print $1}' Names.txt)
do 
    grep "$Name" *.txt | awk -F"," '{print $4}' >> Animals/RafalLukasz/RafalLukasz.txt

done;

echo "Preparing only for Lukasz and Rafal in a one file - second approach "
for Name in $(awk -F: '{print $1}' Names.txt)
do 
    grep "$Name" *.txt | awk -F"," '{print $4}' 

done > Animals/RafalLukasz/RafalLukasz_second.txt

echo "Extracting only Rafal and Lukasz for files"

for NameFromFiles in $(awk -F"," '{print $2}' *.txt)
do 
    if [ $NameFromFiles == 'Rafal' ]; then
        #echo "$NameFromFiles"
        grep "$NameFromFiles" *.txt | awk -F"," '{print $4}' > Animals/RafalLukasz/NameFromFiles/$NameFromFiles.txt
        
    elif [ $NameFromFiles == 'Lukasz' ]; then
        #echo "$NameFromFiles"
        grep "$NameFromFiles" *.txt | awk -F"," '{print $4}' > Animals/RafalLukasz/NameFromFiles/$NameFromFiles.txt
        
    fi
    #grep "$Name" *.txt | awk -F"," '{print $4}' > Animals/$Name.txt

done;
