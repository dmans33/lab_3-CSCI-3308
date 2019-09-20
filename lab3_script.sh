#!/bin/bash
#Author: Devin Sharpe
#Date: 9/19/19

#Problem 1 Code:
echo "Please enter a file name"
read fileName
echo "Please enter a regular expression"
read regEx
echo "Searching the user entered file with the expression given..."
grep $regEx $fileName
echo ""
echo "The number of phone numbers in regex_practice.txt is below!"
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' /Users/dmans33/Documents/lab_3/regex_practice.txt
echo ""
echo "The number of emails in the file is below!"
grep -E -c "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" /Users/dmans33/Documents/lab_3/regex_practice.txt
echo ""
echo "Phone numbers with the 303 area code are below!"
echo ""
grep -o "303\-[0-9]\{3\}\-[0-9]\{4\}\b" /Users/dmans33/Documents/lab_3/regex_practice.txt
echo ""
echo "Appending emails with @geocities to email_results.txt"
grep "@geocities.com" /Users/dmans33/Documents/lab_3/regex_practice.txt >> email_results.txt
