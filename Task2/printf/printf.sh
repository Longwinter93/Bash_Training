#!/bin/bash
#A backslash-escaped character
#Conversion specifiers


foo="this is text"
printf "%s\n" $foo

printf "Qty of records: %s\nQty of issues: %s\n" "34" "39"
printf "%20s %d\n" Mark 305
printf "%0*d" 10 5
print "%.3f" 1.61803398
printf "%.*f" 3 1.61803398
#Storing results in a variable
printf -v var2 'It is store in a variable'
printf '%s\n' "$var2"
printf -v myvar "Luke %s" "Longwinter"
echo $myvar

currentdirectory=$(pwd)
printf 'Current directory: %s' $currentdirectory
printf 'Current directory: %s' $currentdirectory | tr "/" "-"
listofiles=$(ls)
printf 'Files: %s' $listofiles
printf 'Files: %s' $listofiles | tr ".sh" " "

printf "%%\n"

PL=4.231514
USD=1.254435
CHF=8.214588888
printf "%4s: %.2f\\n" "USD" $USD "PLN" $PL "CHF" $CHF

printf "%03d\t" 1 2 3
printf "%03d\v" 1 2 3