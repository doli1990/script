#!/bin/bash

##Author :Aristide

# Date--Oct-19-2022

#----------script for installing packages in centos

	echo "what is your name my friend?"

	read na

	echo "${na},this script will only work on centos or Oracle distribution system"

	sleep 5

	echo "${na},what is your linux distribution?"

	read D

if [$(D) = `(centos||Oracle)`]

then
 	yum install finger -y

         yum install git -y

         yum install net-tools -y

         yum install wget -y

         yum install make -y

         yum install sysstat -y
 else 
	 echo "installation failed"
fi
