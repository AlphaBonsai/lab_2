#!/bin/bash
# Authors : Victoria Orta, Huaiqian Yan
# Date: 1/31/2019

#Problem 1 Code:

echo "Enter an expression: "
read expression
echo "Enter a file name: "
read fileName
	#echo is printing the "" statment and read is taking that the user responds with and plasing
	#it inot a veriable.


#Problem 2 Code:

egrep expression > fileName.txt
	#This is taking the user inputed expreation and puting it into the user specified file.

#Problem 3 Code: I did 3.3 onwerd first and then came back to 3.1 and 3.2 becuase i could not figure 
#how to o the counting for the longest time. So you can see that the finding and counting vertions look 
#very similer. I did all of my explanations of the similaritys in the finding vertions. So for the 
#counting vertions I will only explane how it is counting. the code for What its counting is the same 
#the finding vertions, So see ditcription under them.
	
	#3.1: Count the number of phone numbers in regex_practice.txt
	grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' ~/regex_practice.txt
		#Here we are finding a gereral phone number so we do not need to restic it to a pecifice 
		#area code. The -c acompanied with the intermiting \'s are takeing the expreation that I
		#have explaned in 3.3 below and counting the number of acurentis of this format in the file 
		# regex_practice.txt. i got: 770
	
	#3.2: Count the number of emails in regex_practice.txt
	egrep -c '\b[a-zA-Z0-9_.+]+@[a-zA-Z_.]+.[a-zA-Z]+\b' ~/regex_practice.txt
		#I have stated above what the -c and it \'s are doing. this time twe are coutning the number 
		#total emails regardless of its address. I got: 17706
	
	#3.3: List all of the phone numbers in the "303" area code and store the results in "phone_results.txt"
	egrep "(303)+-[0-9]{3}+-[0-9]{4}"  ~/regex_practice.txt > phone_results.txt
		#This is the code for finding all the numbers in regex_practice.txt
		#and puting them into phone_results.txt. (303) is forcing the first intry
		#to be stord to be 303. The + is saying enidiatly after it also needs
		#to have a - . the [0-9]is saying after the - it must have {3} three
		#numbers ranging from 0 to 9. the rest if basd of of what i have aready seid.
	
	#egrep "[0-9]{3}+-[0-9]{3}+-[0-9]{4}"  ~/regex_practice.txt > phone_results.txt
		#This is the code for finding all the numbers regardless of its area code.

	#3.4:List all of the emails from geocities.com and store the results in "email_results.txt" 
	egrep "[a-zA-Z0-9_.]+@geocities.com" ~/regex_practice.txt > email_results.txt
		#This is the code for geting all the emails that end in geocities.com and puting them into 
		#email_results.txt. the [a-zA-Z0-9_.] is a multy or statement the is saying finad all emails 
		#that begin with either lower case or uppercase of numbers from 0 to 9 or have a _ or a . . 
		# then the + is saying right after that is must have @geocities.com.

	#egrep "[a-zA-Z0-9_.]+@[a-zA-Z_.]+.[a-zA-Z]+" ~/regex_practice.txt > email_results.txt
		#This is the cod for finding all the emails.

	#3.5: List all of the lines that match a command-line regular expresion and store the results in "command_results.txt"
	grep $expression $fileName > command_results.txt
		#This is taking in that the user specified as an exprestion and maching the experetion to 
		#a file that the usre has also spesfied and then storing it into the file command_results.txt.
		#Or at leasts thats that it should be doing. I tird to run the holw code and see if it would 
		#creat the file with my imputes the the hole thing just frezzes. So this one is not working.