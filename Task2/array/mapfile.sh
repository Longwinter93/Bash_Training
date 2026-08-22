#!/bin/bash

#Mapfile - it reads input lines from standard input or command substitution into an array variable. 
#A mapfile is a synonym for a readarray. We can use it to save output from other commands and store it to an array 
#For example, the output from a database table. Then, we can perform operations on it.
touch WorkWithMapFile.txt
echo 'Lunczer is bright' > WorkWithMapFile.txt
echo 'Longwinter is clever' >> WorkWithMapFile.txt
echo 'Longwinter is highly talented!' >> WorkWithMapFile.txt
#Reading an array from a file
mapfile ExampleFile < WorkWithMapFile.txt
echo ${ExampleFile[@]}
echo ${ExampleFile[0]}
#It captures the output into an array
mapfile NewArray < <(printf "Item1\n Item2\n Item3\n")
echo ${NewArray[@]}
mapfile -t SecondArray < <(printf "Item1\nItem2\nItem3\n")
printf "%s\n" "${SecondArray[@]}"
#Reading the specified number of lines
echo "The whole file"
cat WorkWithMapFile.txt
echo "The only two lines: "
mapfile -n 2 ThirdArray < WorkWithMapFile.txt
echo ${ThirdArray[@]}

