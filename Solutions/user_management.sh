welcome(){

	echo "Welcome to the User Account Management console. Please choose from the following options:"
	echo "Usage: $0 [options]"
	echo "-c to crate a new user"
	echo "-d or --delete to delete user account"
	echo "-r or --reset to reset the password of an existing account"
	echo "-l or --list to list all user accounts"
	echo "-h or --help to display usage information and avaialble command-line options for this script"
}


create_user(){
	read -p "Enter the username: " u_name
	if id "$u_name" &>/dev/null;
	then
		echo "Error: Username '$u_name' already exists."
		exit 1
	fi
	read -s -p "Enter the password for '$u_name': " new_password
	echo " "
	sudo useradd -m "$u_name"
	echo "$u_name:$new_password" | sudo chpasswd
	
	echo "User account $u_name created successfully"
}

delete_account(){
	read -p "Enter the username to delete the account: " del_user

	if ! id "$del_user" &>/dev/null;
	then
		echo "Error: Username "$del_user" doesn not exit."
		exit 1
	fi

	sudo userdel -r "$del_user"
	echo "User account '0"$del_user"' deleted succefully"
}

reset_password(){
	read -p "Enter the username to reset the password: " username
	if ! id "$username" &>/dev/null;
	then
		echo "Error: Username "$username" Doesnt not exist."
		exit 1
	fi

	read -s -p "Enter the new password for '$username' : " new_password

	echo "$username:$new_password" | sudo chpasswd
	echo "Password for user account '$username' reset successfully."
}

list_account(){
	echo "List of User Accounts: "
	awk -F: '{print "Username:",$1,"UID:",$3}' /etc/passwd
}


while [[ $# -gt 0 ]];
do
	case "$1" in
		-c | --create) create_user ;;
		-d | --delete) delete_account ;;
		-r | --reset) reset_password ;;
		-l | --list) list_account ;;
		-h | --help) welcome ;;
		# *) welcome ;;
	esac
	shift
done

if [ -z $1 ];
then
	welcome
fi


