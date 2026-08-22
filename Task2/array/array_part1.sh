#!/bin/bash

#A data structure is a specialized format for organizing, processing and storing data in a computer's memory
#Array -it stores multiple lists of items / multiple values
#An Array can contain both strings and numbers (is stores a different type of elements in a Bash array)
#Bash does not support multidimensional array (it doesn't add an array within an array)
#Array can be used to store a list of items (servers,files and users) and loop over that list to perform actions on these ones
#Bash array elements do not have to be the same data type
#We can use an array to loop through each argument and perform operations on them (basic printing or complex processing)
#Declaring an array
#Numerically Indexed Arrays referenced by integers
declare -a array_name
#Assigning elements
array_name[0]=value_1
array_name[1]=value_2
array_name[2]=value_3
#Initializing an array at once using parentheses with elements separated by space:
array_name_using_parentheses=(element_1 element_2 element_3)
#The same
array_name_using_parentheses_with_index=([0]='element_1_with_index' [1]='element_2_with_index' [3]='element_3_with_index')
#Associative Arrays referenced by  strings 
declare -A associative_array
#Assigning elements - key value pairs
associative_array[first_key]="first_value"
associative_array[second_key]="second_value"
associative_array[third_key]="third_value"
#Assigning elements using inline form
declare -A associative_array_inline=(
    [fourth_key]="fourth_value"
    [fifth_key]="fifth_value"
    [sixth_key]="sixth_value"
)
#Accessing elements using index
echo ${array_name[0]}
echo ${array_name_using_parentheses_with_index[0]}
echo ${array_name_using_parentheses[1]}
echo ${associative_array[second_key]}
echo ${associative_array_inline[fourth_key]}
echo ${array_name[-1]}
#Accessing all elements
echo "${array_name[@]}"
echo "${array_name_using_parentheses[@]}"
echo "${associative_array[@]}"
echo "${associative_array_inline[@]}"
#Diff between @ and *
declare -a MyListOfFriends=("Adam" "Marius" "Lucas" "Blazej" "Kurka")
echo "${MyListOfFriends[@]}" #Expanding each element as a separate word. We should always use @ when iterating
echo "${MyListOfFriends[*]}" #Expanding to a single word with elements separated by spaces
#Print all keys indices
echo "${!MyListOfFriends[@]}"
#Qty of elements in an array
echo "${#MyListOfFriends[@]}"
#Looping through an array
echo "Looping through an array:"
for i in "${MyListOfFriends[@]}"
do
    echo "$i"
done 
#Printing both keys and values
echo "Print keys and values: "
for i in "${!MyListOfFriends[@]}"
do
    echo "$i" "${MyListOfFriends[$i]}"
done 
#C-Style loop
echo "C-Style loop: "
length=${#MyListOfFriends[@]}
for (( i=0; i< ${length}; i++ ))
do
    echo $i ${MyListOfFriends[$i]}
done
#Adding an element. It stores command ouputs and logging events on our system
echo "Adding elements"
declare -a AddElement=("Luke" "Rafal" "Jerzy" "Grazyna")
echo ${AddElement[@]}
echo "Add Dorota"
AddElement[4]="Dorota"
echo ${AddElement[@]}
echo "Adding a few elements: "
AddElement+=(Leon Liliana)
echo "${AddElement[@]}"
echo "Getting only Luke and Rafal, then only Leon and Lilii"
echo "${AddElement[@]:0:2}"
echo "${AddElement[@]:5:6}"
echo "Removing an element Jerzy"
unset AddElement[2]
echo "${AddElement[@]}"
#Array exists:
for i in "${AddElement[@]}"; do 
    [[ "$i" == "Leon" ]] && echo "Found. An Array is not empty" && break 
done

#Deleting the entire array
unset AddElement
echo "${AddElement[@]}"
if [[ ${#AddElement[@]} -eq 0  ]]; then 
    echo "Array is empty"
fi

#Adding an array element to a Associative Array
associative_array_inline+=([seventh_key]=seventh_value)
echo "Printing Keys: ${!associative_array_inline[@]}"
echo "Printing values: ${associative_array_inline[@]}"
echo "Removing second element"
unset associative_array_inline[fourth_key]
echo "${associative_array_inline[@]}"

