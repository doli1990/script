#!/bin/bash


# author:aristide

# date: october 19 2022


######## automate the installation of Docker on ubuntu using the repository

        echo "To install docker, you need the 64-bit version of the Ubuntu 18.04 OS or any recent Ubuntu version. You also need a user account with sudo priviledges"

        sleep 5

#step 1 Uninstall the old version

	sudo apt-get remove docker docker-engine docker.io containerd runc

#Step 2: Setup the docker repository

	sudo apt-get update

	sudo apt-get install ca-certificates curl gnupg lsb-release

#Now, add Docker’s official GPG key with the command

	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#Then, use the following command to setup the stable repository

	 echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/kyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 

#step3Intall Docker Engine

#Update the apt package index and install the latest version of Docker Engine

	sudo apt-get update

	sudo apt-get install docker-ce docker-ce-cli containerd.io

# check the status, start and enable the docker deamon

	sudo systemctl status docker

	sudo systemctl start docker
	
	sudo systemctl enable docker

#Verify that the version is installed correctly by running the Hello World image

	sudo docker run hello-world
