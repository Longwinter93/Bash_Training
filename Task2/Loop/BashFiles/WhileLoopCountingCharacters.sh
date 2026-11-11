#!/bin/bash


file=file.txt
a=0
while IFS= read -r -n1 c
do 
    [ "$c" == "i" ] && (( a++ )) #It counts a letter i and store it on variable a
done < "$file"

echo "We count letter i in a $file"
echo "A letter i is $a on a $file"

