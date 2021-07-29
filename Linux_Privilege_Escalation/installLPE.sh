#! /bin/bash

sudo apt-get clean &>/dev/null
sudo apt-get install -y lolcat &>/dev/null
tput clear reset

docker ps -aq &> /dev/null
if [ $? == 0 ]
then
	echo '============================================================' | lolcat
	echo 'Dependencies Installed' | lolcat
	echo '============================================================' | lolcat
	echo 'Initiating <- Linux Privilege Escalation Lab -> Installation' | lolcat
	echo '============================================================' | lolcat

	cp -f lab_profile $HOME/.lab_profile
	echo 'source $HOME/.lab_profile' >> $HOME/.bashrc
	source $HOME/.bashrc
	echo 'Updated .bashrc with .lab_profile' | lolcat

	echo '============================================================' | lolcat
	echo 'Installing : LAB-1' | lolcat
	echo '============================================================' | lolcat
	cd labs/lab1 && ./build_lab.sh
	echo '' | lolcat
	echo '============================================================' | lolcat
	echo 'Installing : LAB-2' | lolcat
	echo '============================================================' | lolcat
	cd ../lab2 && ./build_lab.sh 
	echo '' | lolcat
	echo '============================================================' | lolcat
	echo 'Installing : LAB-3' | lolcat
	echo '============================================================' | lolcat
	cd ../lab3 && ./build_lab.sh
	echo '' | lolcat
	echo '============================================================' | lolcat
	echo 'Installing : LAB-4' | lolcat
	echo '============================================================' | lolcat
	cd ../lab4 && ./build_lab.sh
	echo '' | lolcat
	echo '============================================================' | lolcat
	echo 'Installing : LAB-5' | lolcat
	echo '============================================================' | lolcat
	cd ../lab5 && ./build_lab.sh
	echo '' | lolcat
	echo '============================================================' | lolcat
	echo 'Installing : LAB-6' | lolcat
	echo '============================================================' | lolcat
	cd ../lab6 && ./build_lab.sh
	echo '' | lolcat
	echo '============================================================' | lolcat
	echo 'Installing : LAB-7' | lolcat
	echo '============================================================' | lolcat
	cd ../lab7 && ./build_lab.sh
	echo '' | lolcat
	echo '============================================================' | lolcat
	echo 'Installing : LAB-8' | lolcat
	echo '============================================================' | lolcat
	cd ../lab8 && ./build_lab.sh
	echo '' | lolcat
	echo '============================================================' | lolcat
	echo 'Installing : LAB-9'
	echo '============================================================' | lolcat
	cd ../lab9 && ./build_lab.sh
	echo '' | lolcat
	echo '============================================================' | lolcat
	echo 'Installing : LAB-10 and LAB-11' | lolcat
	echo '============================================================' | lolcat
	cd ../lab10 && ./build_lab.sh
	echo '' | lolcat
	echo '============================================================' | lolcat
	echo 'FINISHED: ALL LABS INSTALLED' | lolcat
	echo '============================================================' | lolcat
fi

