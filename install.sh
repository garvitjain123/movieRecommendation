#!/bin/bash


echo -e "\n\e[1;32mTesting network connection...\e[0m \n" ;
res=`ping -c4 1.1.1.1` ;

if [[ $res != *"0 received"* ]];
then
echo -e "\n\e[1;32mProcedding with the Installation\e[0m \n" ;
else
echo -e "\e[1;31mCheck you internet connectivity before procedding forward with the installation\e[0m \n" ;
exit
fi

##Installation of Docker on the system if not present##

##Adding GPG key to the local keychain##
echo -e "\n\e[1;32mAdding the GPG key for docker repo...(If asked input your password)\e[0m \n" ;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add ;

##Updating the current local repo package list##
echo -e "\n\e[1;32mUpdating the local repo package list...\e[0m \n" ;
sudo apt update;

##Checking for docker previous installation##
docker -v > /dev/null 2>&1 ;

if [[ $? -eq 0 ]];
then

##Upgrading docker if it is not up to the latest version##
echo -e "\n\e[1;32mUpgrading docker, git and unzip if required ...\e[0m \n" ;
sudo apt install docker.io;
sudo apt install git;
sudo apt install unzip;
sudo apt install docker-compose;
else

##Installation of Docker###
echo -e "\n\e[1;32mInstalling docker and git onto the system...(If asked input your password)\e[0m \n" ;
sudo apt install -y docker.io git unzip docker-compose;
fi

##Enabling Docker in services##
echo -e "\n\e[1;32mEnabling docker daemon...(If asked input your password)\e[0m \n" ;
sudo systemctl start docker ;
##Enabling docker to be used without root permissions
echo -e "\n\e[1;32mEnabling docker daemon to run without sudo...(If asked input your password)\e[0m \n" ;
sudo chmod 666 /var/run/docker.sock

##Checking the docker installation##

echo -e "\n\e[1;32mChecking the installation...\e[0m \n" ;
##Checking the version##
vers=`docker -v`
echo -e "\e[1;32m$vers\e[0m \n" ;

##Checking the docker installation##
echo -e "\n\e[1;32mTesting a demo container\e[0m \n"
sudo docker run hello-world ;
