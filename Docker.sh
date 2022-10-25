#!/bin/bash


# author:aristide

# date: october 19 2022


######## automate the installation of Docker on centos7 using the repository

        echo "this installation will take few minutes. please be patient................"

        sleep 5

#step 1 Uninstall the old version

        echo " we will remove the old docker files if there is any"

         sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
# step 2 set up the docker repository (Before you install Docker Engine for the first time on a new host machine, you need to set up the Docker repository. Afterward, you can install and update Docker from the repository)
echo "set up the repository first"

#Install the yum-utils package (which provides the yum-config-manager utility) and set up the repository.

        sudo yum install -y yum-utils

        sudo yum-config-manager \
                --add-repo \
        https://download.docker.com/linux/centos/docker-ce.repo

        sleep 3

#step 3 installation of Docker engine

        echo "install Docker Engine"

        sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

if [$? -eq 0]

then

        echo "installation succeed thank you for your patient"

        sleep 3

# star the Docker service

        sudo systemctl start docker

        sudo docker run hello-world
else

        echo "installation failed double check and start over"
