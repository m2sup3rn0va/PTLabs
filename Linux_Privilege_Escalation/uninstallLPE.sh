#! /bin/bash

sudo apt-get clean &>/dev/null
tput reset clear

echo "==============================" | lolcat
echo "Initiating Lab Cleanup" | lolcat
echo "==============================" | lolcat

docker kill $(docker ps -aq) 2>/dev/null | lolcat
docker rm $(docker ps -aq) 2>/dev/null | lolcat
docker rmi $(docker images -aq) 2>/dev/null | lolcat
docker rmi $(docker images -aq) 2>/dev/null | lolcat
docker rmi $(docker images -aq) 2>/dev/null | lolcat
echo "==============================" | lolcat
echo "Containers and Images Cleared" | lolcat
echo "==============================" | lolcat

sed -i '/.lab_profile/d' $HOME/.bashrc
rm -rf $HOME/.lab_profile

echo "Reverted '.bashc' changes" | lolcat
echo "Removed '.lab_profile'" | lolcat
echo "==============================" | lolcat

