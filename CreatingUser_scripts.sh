#!/bin/bash

echo "Running Creating User Script"
echo "User will be created under /qmi_home folder"


read -n 1 -r -p "Press any key to continue..."

echo "Password of user will be the same as NIH_guest User."

#cmd2="sudo vipw"
#cmd2a="sudo vipw -s"



while true; do 
	read -p "do you want to Create the user?[y/n]" yn
	case $yn in
		[Nn]* ) break;;
		[Yy]* ) echo "Enter your new User name:";
		read Username
		echo "You are creating a new user name: $Username";

		cmd="cd /qmi_home/"
		cmda="sudo mkdir /qmi_home/$Username"
		cmd1="sudo gedit /etc/passwd /etc/shadow"
		cmd3="sudo vigr"
		cmd4a="cd /qmi_home/$Username"
		cmd4="sudo cp -r /etc/skel/* ."
		cmd5="sudo chown -R $Username.stbb ."
		cmd5a="sudo chmod -R go=u,go-w ."
		cmd5b="sudo chmod go= ."
		cmd5c="sudo chmod -R 755 /qmi_home/$Username"
		cmdLS="ls -alrt /qmi_home"
		cmd7="sudo cp ../irfanogo/.cshrc* ."

		echo "Editing passwd and shadow file - Caution" 

		echo $cmd1
		$cmd1;
		echo $cmda
		$cmda
		echo "";
		echo "Creating group of user"
		echo $cmd3
		$cmd3;
		echo $cmd4a
		$cmd4a;
		echo $cmd4
		$cmd4;
		echo $cmd5
		$cmd5;
		echo $cmd5a
		$cmd5a;
		echo $cmd5b
		$cmd5b;
		echo $cmd5c
		$cmd5c;
		echo $cmdLS
		$cmdLS;
		echo "pwd";
		"pwd";
		echo $cmd7
		$cmd7;
		break;;
		* ) echo "Please answer [y/n].";;
	esac
done

