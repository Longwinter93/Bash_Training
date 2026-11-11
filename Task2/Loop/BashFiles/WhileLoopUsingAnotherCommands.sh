#!/bin/bash
file=file.txt
echo "Using cat command: "

cat "$file" | while read -r line 
do 
    echo $line
done

file2=Info3.txt
echo "Using awk command: "
awk '{print}' "$file2" | while read -r line 
do 
    echo $line 
done

echo "Using cat and grep commands: "
cat Info4.txt | grep -v Lukasz | while IFS=',' read -r ID Name Occupation Animal
do 
    echo "$Name and $Occupation"
done