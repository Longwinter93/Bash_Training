#!/bin/bash

echo "Write something with dash because we set a delimiter to -"
read -d "-"
echo "\n"
echo "$REPLY"

read -p "Enter your username: " username
echo "Your username is $username"
#Setting a character limit
echo "Only 3 characters"
read -n 3
#Only 5 seconds
echo "You have only 5 seconds to input values "
read -t 5
#Storing inputs in an array
read -a array <<< "Hi Lukasz!"
echo ${array[0]}
echo ${array[1]}
#Ignoring backslash interpretation
echo "Ignoring backslash"
read -r <<< "Hello\world!\Hi!"
printf %s "$REPLY"
#Accepting backslash
echo "\n"
echo "Accepting backslash"
read <<< "Hello\world!\Hi!"
printf %s "$REPLY"
echo "\n"
#Adding variables
read -p "Enter name surname and country: " name age country 

echo "Name: $name"
echo "Age: $age"
echo "Country: $country"
#By default, we have space as the delimiter in the read command. We can change it:
IFS="," read -p "Enter name, age, city and country: " name age city country
echo "Name: $name"
echo "Age: $age"
echo "City: $city"
echo "Country: $country"

#Array
read -a array -p "Enter the elements of array: " 
echo ${array[0]}