#!/bin/bash

## Author: Aristide

# Date: oct-19- 2022

# ////////////////////script for installation of jenkins on centos/redhat....


# step1 installation of java because jenkins is a java application............


        echo "java installation start now..."


        sudo yum install java-11-openjdk-devel -y


        clear


# step2 Enable jenkins repository so that we can use yum to install the latest version of jenkins..............


        sudo curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo

        sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

# step3 jenkins installation
echo "jenkins installation begin now...."

        sudo yum install jenkins -y

if [ $? -eq 0 ]
then

        echo "jenkins was successfully installed"


         sleep 4

# check the status of the service

        sudo systemctl status jenkins

# start the service

        sudo systemctl start jenkins

# enable the service so that it start on the reboot

        sudo systemctl enable jenkins

# step4 adjust the firewall ( open the suitable port for jenkins)

	sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp

        sudo firewall-cmd --reload

## step5 set up the jenkins in the browser

        echo "jenkins is ready...please open your browser and type the IP address/or your domaine name of the server followed by the number 8080.
example:192.168.50.20:8080"

        sleep 5


        echo "copy and paste the coming adm password in the unlock jenkins page"

        sleep 5

        sudo cat /var/lib/jenkins/secrets/initialAdminPassword

#....................install suggested plugins
#....................clic on install suggested plugins box in the customize page and wait foe it to complete
# ...................create your first adm user : just fill out the form save and continue
# ...................instance configuration : here you will need to set the url for the jenkins instance
# ...................the jenkins url field will come with a defaut value. just click on save and finish

else
	echo " jenkins was not install please double check..."
fi

        echo "thank you for your patient"
