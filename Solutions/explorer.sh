#.!/bin/bash


#########################################################################################################
## Task 1 : File and Directory Exploration                                                              #
#########################################################################################################


#Creating a function to list the files in the directory
function file_directory_explorer() {

	echo "Welcome to the Intereactive File and Directory Explorer!"


	while true; do  #while command is used to loop the script 

		echo "---------------------------------------"
		echo "The present working directory is $(PWD)"
		echo " "
		echo "Below are the files and directories in the present directory"
		echo " "
		ls -lh | awk '{print $9 " " "("$5"B)"}'   #the output from ls -lh acts as input to the awk command, here as per the given command, it prints only the column 9 and column 5 of the provided input
		read -p "Press Enter to show the files and directories again or Enter 'q' to move on to the next step: " user_option
		
		#if command is used to compare and act according to the given condition
		if [ "$user_option" == "q" ]; then 
			break
		fi
	done
}


#########################################################################################################
## Task 2 : Character counting                                                                          #
#########################################################################################################

function character_count() {

	while true;
	do
		echo " "
		read -p "To count the characters, Enter a line of text (Press Enter without text to exit): " input
		if [ -z "$input" ]; then #this command checks whether the given input is empty or has data. If its empty then if command becomes true and exits the loop
			echo " "
			echo "exiting the script, Have a Good day!"
			sleep 2
			break
		else
			count_num=${#input} #${#input} command counts the character in the input variable
			echo "Charcter Count: $count_num"
		fi
	done
}

file_directory_explorer
character_count


