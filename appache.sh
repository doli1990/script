#!bin/bash

# Author : Aristide
# Date :  oct 19 2022

#---------------------automate the appache installation on centos7/redhat system....

 # please update you system for a better outcome .....

      echo "what is your name?"

      read na

        echo "hey $na i guess you have the permission to proceed in either case this will be reported"

        sleep 5

        echo  "would you want to update your system $na  {yes/no}"

read answer

if  [$(answer) = "yes"]

then
         echo "$na you have chosen to update your system first...it may take few minute"

         yum -y update && yum -y upgrate

	 clear

# appache installation

	yum install httpd -y

#start deamon

         systemctl start httpd

# enable deamon so that the service start after the reboot

         systemctl enable httpd

#open the appropriate port

         firewall-cmd --permanent --add-port=80/tcp

#reload the firewall

         firewall-cmd --reload

else

echo "$na you have chosen not to update your system... the installation will still begin shortly"

# appache installation

           yum install httpd -y

#start deamon

	   systemctl start httpd

# enable deamon

           systemctl enable httpd

#open the appropriate port

            firewall-cmd --permanent --add-port=80/tcp

#reload the firewall

            firewall-cmd --reload

fi

echo "nice job!!!!!!"
