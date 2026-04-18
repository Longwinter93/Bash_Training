#!/bin/bash


echo "Write something to standard input"
read
echo "You wrote this:  $REPLY"
echo "We define a variable. Please to write something"
read variable
echo "We fetch data from a defined variable $variable"
#We split words into variables
read var1 var2
echo $var1
ecgo $var2 
#Using piping
echo "Hello, World!" | (read var1 var2; echo -e "$var1 \n$var2")
#Heredoc contation
read -r var1 var2 <<< "Hello, World!"
printf "var1: %s \nvar2: %s\n" "$var1" "$var2"
#If no variavles are given, the entire line is assigned to REPLY variable
echo "Hello, world!" | (read; echo "$REPLY")

echo "I learn about Bash" | (read var1 var2 var3; echo -e "Var1: $var1 \nVar2: $var2 \nVar3: $var3")

echo "Luke Longwinter" | (read var1 var2 var3; echo -e "Var1: $var1 \nVar2: $var2 \nVar3: $var3")

#Escape Character -> \n newline, \t tab - Backslash escaping
#-r it disables backslash escaping
echo "\n"
read <<< "Hi!, \tLuke!"
printf %s "$REPLY"
echo "\n"
read -r <<< "Hi!, \tLuke!\n"
printf %s "$REPLY"
echo "\n"
read <<< "Hi!, \nLuke!"
printf %s "$REPLY"
echo "\n"
read -r <<< "Hi!, \nLuke!\n"
printf %s "$REPLY"
echo "\n"
#Changing the delimiter (Internal Field Separator) IFS 


echo "\nLuke:Longwinter:is:a:developer" | \
(IFS=":" read -r var1 var2 var3 var4 var5; echo -e "$var1 \n$var2 \n$var3 \n$var4 \n$var5" )

echo "Luke:is:ambitious" | \
    (IFS=":" read -r var1 var2 var3 var4; echo -e "Var1: $var1 \nVar2: $var2 \nVar3: $var3 \nVar4: $var4")

echo "Luke_is_hard-working*and" | \
     (IFS="-_*" read -r var1 var2 var3 var4 var5; echo -e "$var1 \n$var2 \n$var3 \n$var4 \n$var5")

read -r -p "Are you sure? " StoreInVariable
echo "$StoreInVariable was stored "
#Supress terminal echoing -  sensitive information 
read -r -s -p "Enter your password: "

touch filetext.txt
echo "The first line" > filetext.txt
echo "The second line" >> filetext.txt
echo "The Third line" >> filetext.txt
echo "Next line" >> filetext.txt
cat filetext.txt

read -r -n 1 -p "Press any key to continue..."
echo "\n"
read -r -d ":" var <<< "Long:winter"
echo "$var"

echo "\n"
read -r -s -p "Password: " pass 
echo "$pass"