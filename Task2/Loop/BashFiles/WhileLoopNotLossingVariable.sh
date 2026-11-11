#!/bin/bash

Increment=0
printf "a\nb\nc\n" | while IFS= read -r line
do #The loop runs in a subshell
    Increment=$((Increment + 1))
done #We change a variable inside loop. This variable is lost becuase the while loop is lost when the subshell exits
echo "It fails to work. Nothing counts: "
echo "$Increment"
echo "To store data in a variable, we need to use process substitution to run in the current shell"
SecondIncrement=0
while IFS= read -r line 
do 
    SecondIncrement=$((SecondIncrement + 1))
done < <(printf "a\nb\nc\n")
echo "We use Process Substitution. The loop runs in the current shell"
echo "It works. Something counts: "
echo "$SecondIncrement"

echo "Process substitution keeps the loop in the current shell so variables are accessible after the loop"
