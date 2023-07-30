#.!/bin/bash
#########################################################################################################
## Task 1 : Comments                                                                                    #
#########################################################################################################

# Comments are used/created for better understanding of the code
# This is an example of comment. '#' is used for comment 
# Shell ignores the line starting with # 

<<COMMENT 
This above command is used when you want to enter multiple lines of comments
This is helpful as you don't need to enter # in the starting of every new line
The comment can be closed by re-entering the starting keyword below 

COMMENT
#COMMENT

#########################################################################################################
## Task 2: Echo                                                                                         #
#########################################################################################################

# The 'echo' command is used to display message on the terminal.

echo "Hello, Welcome to the Bash Scripting"
sleep 2
#########################################################################################################
## Task 3 : Variables                                                                                   #
#########################################################################################################

#Variables in bash are used to store data and can be referenced by their name

name='Amogh'
country='India'


#########################################################################################################
## Task 4 : Using Variables                                                                             #
#########################################################################################################

echo "Myself $name from $country"
sleep 2
#########################################################################################################
## Task 5 : Using Built-in Variables                                                                    #
#########################################################################################################

#Bash provides several built-in variables that hold useful information
echo "Below are some of the examples of built-in variables"
sleep 2
echo "The home directory of current user: " $HOME
echo "THe username of the current user: " $USER
echo "The present working directory is: " $PWD
echo "The path to the current shell program: " $SHELL
echo "The user ID of the current user: " $UID

#########################################################################################################
## Task 6 : Wildcards                                                                                   #
#########################################################################################################

#Wildcards are special characters used to perform pattern matching when working with files
echo "Below are the total scripts present in this directory"
sleep 2
ls -a *.sh

# To run the file 
# type bash <file_name>
# or 
# make the file executable by changing the permission
# chmod 744 <filename>

