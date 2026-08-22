#!/bin/bash
#A mapfile reads only the content from a process substitution
mapfile lines < WorkWithMapFile.txt #The content of file.txt is read into the lines array
echo ${lines[@]} #We can access the element of lines 
echo ${lines[0]}

echo -n -e "Lukasz\nAdam\nMaksymilian\n"
printf "Lukasz\nAdam\nMaksymilian\n"

mapfile PlaceHolder < <(printf "Lukasz\nAdam\nMaksymilian\n")
echo ${PlaceHolder[@]}

echo ${PlaceHolder[1]}
printf '<%s>\n' "${PlaceHolder[@]}"
#Adding -t option to trim a new line
mapfile -t PlaceHolder2 < WorkWithMapFile.txt
printf '<%s>\n' "${PlaceHolder2[@]}"
