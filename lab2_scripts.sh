#!/bin/bash
# Authors : Victoria Orta, Huaiqian Yan
# Date: 1/31/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter an expression: "
read expression
echo "Enter a file name: "
read fileName


#Problem 2 Code:

egrep expression > fileName.txt

#Problem 3 Code: 
	
	#3.1: Count the number of phone numbers in regex_practice.txt
	grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' ~/regex_practice.txt
	
	#3.2: Count the number of emails in regex_practice.txt
	egrep -c '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b' ~/regex_practice.txt
	
	#3.3: List all of the phone numbers in the "303" area code and store the results in "phone_results.txt"
	egrep "(303)+-[0-9]{3}+-[0-9]{4}"  ~/regex_practice.txt > phone_results.txt

	#3.4:List all of the emails from geocities.com and store the results in "email_results.txt" 
	egrep "[a-zA-Z0-9_.]+@[a-zA-Z_.]+.[a-zA-Z]+" ~/geocities.com > email_results.txt

	#3.5: List all of the lines that match a command-line regular expresion and store the results in "command_results.txt"
	grep $expression $fileName > command_results.txt