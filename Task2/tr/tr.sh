#!/bin/bash

echo 'lukasz' | tr 'k' 'c'

echo 'llukasz' | tr 'l' 'L'

echo 'lukasz' | tr -c 'ka' 'xy'

echo 'Longwinter' | tr -d 'win'

echo '    Luke                      Longwinter          ' | tr -s ' '

cat myname.txt
cat myname.txt | tr -s ' '
cat myname.txt | tr -s ' ' '_'

#By default, if SET1 is longer than SET2, tr reuses the last character of SET2. Here is an example:
echo 'Luke' | tr 'abcde' '12'
#-t option forces to truncate SET1 to the length of SET2 before processing
#The last three characters of SET1 are discarded. 
#SET1 becomes ab, the same length as SET2,
#and no replacement is made since the input contains none of those characters
echo 'Luke' | tr -t 'abcde' '12'
echo 'Luke' | tr -t 'aucde' '12'
echo 'Luke' | tr Luke 12
echo 'Luke' | tr -t Luke 12
echo 'adam' | tr -cs 'a' '0'

#Converting case
echo 'adam' | tr '[:lower:]' '[:upper:]'
echo 'adam' | tr 'a-z' 'A-Z'
#Removing everything apart from digits
echo "My phone is 223-124-512" | tr -cd '[:digit:]'

echo "Luke Longwinter is the best one" | tr -cs '[:alnum:]' '\n'
#Remove Windows Line Ending. We need to remove \r\n (carriage return + newline) as line endings
#To convert a Windows file to Unix format, we need to remove the carraige return characters
tr -d '\r' < windows.txt > unix.txt
#Remove blank lines
#The redirection < passess the contents of file.txt to tr
#The > writes the output to new_file
cat file.txt
tr -s '\n' < file.txt > new_file.txt

printf '%s\n' "$PATH" | tr ':' '\n'
#We redirect a file textsample.txt to stdin and ask tr to do the conversion
tr 'a-z' 'A-Z' < textsample.txt
#We redirect a file textsample.txt to stdin and ask tr to do the conversion, then save changes to a new file
tr 'a-z' 'A-Z' < textsample.txt > uppertextsample.txt
#Change a name of it
tr 'a-z' 'A-Z' < textsample.txt > uppertextsample.txt && mv uppertextsample.txt newuppertextsample.txt
#Using redirection
cat hyphens.txt | tr '_' '-'
#Complement
echo 'L!##U!@#%^&K$!@##!@^E' | tr -c 'A-Z' ' '
echo 'L!##U!@#%^&K$!@##!@^E' | tr -cs 'A-Z' ' '
cat sample.csv | tr -cd '0-9\n'
echo 'daweq421143egrw54w7f345gfghfkliuo8778' | tr -cd '0-9'
echo 'one two three' | tr ' ' '\n'