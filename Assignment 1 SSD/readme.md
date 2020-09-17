# Assignment 1

## Question 1
I assumed my present working directory is `home`

For c) part please run the command by moving into "Assignment1" directory. The command searches for .txt files using find and change the syntax to .c 

For d) sorted using -laShr and . is for present directory.

##Question 2
compgen command is used for matching, which is a bash built-in command which is used to list all the commands that could be executed in the Linux system .
For loop is run and using compgen each command is matched with the given string, if not found print "No" otherwise "Yes". 

##Question 3
Bash disables history in non-interactive shells by default, but we can turn it on by writing,

HISTFILE=~/.bash_history
set -o history

That's why i have used this in beginning of the script. Using awk the command and its frequency is print and sorted in the according to frequency.

##Question 4
Using tr –s for search and replace any "()" with space. In the end, as all parenthesis are removed opening and closing parenthesis are printed with modified input.


##Question 5
tr [:upper:] [:lower:] is used to convert any string from lowercase to uppercase. Then it's matched for palindrome and print yes if it's otherwise no.


##Question 6
"$@" is used for reading arguments one by one and result in echoed into bc (basic calculator) for calculation.


##Question 7
ps -au is used for running process. Using awk field with PID (i.e. 2) is written into pid.txt and sorted. Then read user input (n) and print from head (means beginning 'n' in pid.txt). 


##Question 8
The file which is provided as argument is scheduled using crontab.

##Question 9
First spaces are removed using "tr -d ' '" then luhn algorithm is followed.
Starting from the rightmost digit double the value of every second digit, If doubling of a number results in a two digits number i.e greater than 9, then add the digits of the product , to get a single digit number. Then take the sum of all the digits. If the total modulo 10 is equal to 0 (if the total ends in zero) then the number is valid according to the Luhn formula; else it is not valid.


##Question 10
Operator and operands are read, then specified operation is performed one by one with all operands provided. "if-elif" is used for matching operands. "awk" for operation. %.4f for precission upto four decimals and final result is printed at the end. 
    
