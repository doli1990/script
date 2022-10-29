#!/bin/bash


# author:aristide

# date: october 29 2022


######## automate the installation of sonarqube on centos7 using the repository
## please run this as regular user 

user_name= `whoami`

if [$user_name = root ];

then 
	echo "you must be as regular user"

exit 1
fi

	echo "Java 11 installation"

#Step 1: Java 11 installation:The only prerequisite for running SonarQube is to have Java (Oracle JRE 11 or OpenJDK 11) installed on your machine
       
	echo "this installation required your system to be updated.this will take few minutes. please be patient................"

	sleep 3

	sudo yum update -y

	sudo yum install java-11-openjdk-devel -y

	sudo yum install java-11-openjdk -y
	
	sleep 3

Step 2: Download SonarQube latest versions on your server

        sleep 3

	cd /opt

	sudo yum install wget unzip -y

	sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

#step3 :Extract packages

	sudo unzip /opt/sonarqube-9.3.0.51899.zip

#Step 4: Change ownership to the user and Switch to Linux binaries directory to start service

	sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

	cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64/

#STEP 5: opne the appropriate port

	sudo firewall-cmd --permanent --add-port=9000/tcp

	sudo firewall-cmd --reload

	./sonar.sh start

	echo " installation done successfully get the ip and access sonarqube on your browser:your-ip-address:9000."
	sleep 4
	echo " Here are the default credentials for access:login: admin passwd: admin"


Login: admin
