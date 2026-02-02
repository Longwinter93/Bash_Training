#!/bin/bash

uniq uniqexercise.txt

uniq -c uniqexercise.txt

uniq -D uniqexercise.txt

uniq -u uniqexercise.txt

sort uniqexercise.txt | uniq -ic > sorteduniq.txt

sort uniqexercise.txt | uniq -u > onlyunique.txt

sort uniqexercise.txt | uniq -D > onlyduplicate.txt