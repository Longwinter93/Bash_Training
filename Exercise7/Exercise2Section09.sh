#!/bin/bash

read -p "How many lines of /etc/passwd would like to see? " number
echo "$number"
LINE_NUMBER=1
while read LINE
do
	echo "$LINE"
	((LINE_NUMBER++))
	if [[ "$number" -lt "$LINE_NUMBER" ]] #break statement terminates and exists a loop when a condition evalutes to true. 
	then
	  break
	fi
done < etc/passwd.txt

#-le  $number =< $LINE_NUMBER 2 =< 1, 2 =< 2  (true)
#-lt $number < $LINE_NUMBER 2 < 1, 2 < 2, 2 < 3 (true)