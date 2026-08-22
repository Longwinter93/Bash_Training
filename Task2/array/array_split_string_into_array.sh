#!/bin/bash

sentence="Luke Longwinter is GOAT"
words=()
#Add words from a sentence variable to a words array
for i in $sentence; do words+=($i) ; done
#The sentence was split into words and the words were added to the words array
for word in ${words[@]}; do echo $word ; done 
