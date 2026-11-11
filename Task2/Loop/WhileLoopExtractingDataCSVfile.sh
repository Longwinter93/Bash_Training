#!/bin/bash

file="Sales Records.csv"

echo "Looking at $file and take the first line"
head -10 "$file"
echo "We are going to replace commas to blank space and save it"
head -1 "$file" | sed 's/,/ /g'
NewLineWithoutComma=$(head -1 "$file" | sed 's/,/ /g')
echo "$NewLineWithoutComma"


while IFS=',' read -r Region Country Item Type Sales Channel Order Priority Order Date Order ID Ship Date Units Sold Unit Price Unit Cost Total Revenue Total Cost Total Profit
do 
    echo "$Region and $Country" >> RegionAndCountryFromCsvfiles.txt
done < "$file"

Lines=$(wc -l RegionAndCountryFromCsvfiles.txt)
echo "This new file has $Lines lines"
