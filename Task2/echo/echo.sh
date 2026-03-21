#!/bin/bash
#Backslash escape sequences
echo 'Hello "Luke"'
echo "Hello \"Luke\""
echo "I'm a Luke."
echo "firstline\nsecondline"
echo -e "firstline\nsecondline"
echo -e "There are lists of things:\n\t-Eggs,\n\t-Potatos."
echo -e "There are lists of things:\n\v-Eggs,\n\v-Potatos."
echo -n "Luke " && echo "Longwinter"
echo "Basic"
echo -n "Basic"
echo "Current user: $(whoami)"
echo "The date is: $(date +%D)"
echo There are files: *.txt
echo "First Line to a File" > Text.txt
echo "Append second line to a File" >> Text.txt
#Writing to stdeer
echo "error" >&2
cat Text.txt
echo -e "\033[0;34mBLUE"
var='Storing'
echo "$var"
echo $var
echo $PWD
echo -e "\n"
echo "\n"
red='\033[31m'
reset='\033[0m'
echo -e "${red}This is a red text.${reset}And now the text is normal again."
echo {1..5}
echo "$(date): Sth happended !" >> log.txt