#!/bin/bash

awk '{print $0}' basicfilename.txt

awk '{print}' customer.txt

awk '{print NR,$0}' basicfilename.txt

awk '{print $1, $3}' basicfilename.txt

awk '/^M/' basicfilename.txt

awk '/IT/' basicfilename.txt

awk '/IT/{print $2}' basicfilename.txt

awk '$3 < 30 {print $0}' basicfilename.txt

awk '{print $NF}' basicfilename.txt

awk '{print $1,$NF}' customer.txt

awk 'NR==4, NR==6 {print NR,$0}' customer.txt

awk '{print $1}' basicfilename.txt | head -n 2

awk '{print $0}' customer.txt | sort

awk '{print $4}' customer.txt | sort

awk '{print NR " - " $1 }' customer.txt

awk '($1=="marcin")' customer.txt

awk '/marcin|lukasz/' customer.txt

awk -F" " '{print $0}' customer.txt

awk -F" " '{print $2}' customer.txt

awk -F"," '{print $6}' employee_data.csv

awk -F"," -f PrintSumOfSalary.awk employee_data.csv

awk -f PrintSumOfSalaryTxt.awk customer.txt

awk -F"," '{print $6}' employee_data.csv > employee_data2.txt
#Using variables + conditions
awk -F"," -v var="Amount:" '{print var, $3}' employee_data.csv
awk -v limit=40000 '$4 > limit {print $1, $4}' customer.txt
awk '$4 >= 40000 {print $0}' customer.txt
awk '$4 >= 40000 {print $1, $2}' customer.txt
awk 'NR < 3 {print}' customer.txt
awk 'NR > 2 {print}' customer.txt
awk 'NR == 5 {print}' customer.txt
awk '{print "Name: " $1}' customer.txt
#Data manipulation
awk -F"," '{sum += $3} END {print sum}' employee_data.csv
awk -F"," '{sum += $3; count++} END {print "Summary:"  sum, count, sum/count}' employee_data.csv
awk 'END { print NR }' customer.txt
awk 'length($0) > 30' customer.txt
awk 'BEGIN {print "Name Position Department Money"} NR > 1' customer.txt