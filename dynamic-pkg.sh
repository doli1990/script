#!/bin/bash

##Author :Aristide

# Date--Oct-19-2022

#----------script for installing packages in centos, ubuntu,alpine)

        echo "what is your linux distribution ( centos, ubuntu,alpine)"
read D


if [ ${D} = centos ]
then

        echo "we will install the following packages on your $(D) system: finger; git; net-tools; wget; make; sysstat;"

         yum install finger -y

         yum install git -y

         yum install net-tools -y

         yum install wget -y

         yum install make -y

         yum install sysstat -y

	 elif [ ${D} = alpine ]
then

       echo "we will install the following packages on your $(D) system: finger; git; wget; make"

         apk add git

         apk add make

         apk add wget

         apk add net-tools

elif [ ${D} = ubuntu ]
then

        echo "we will install the following packages on your $(D) system: finger; git; net-tools; wget; make; sysstat;"

         apt-get install finger -y

         apt-get install git -y

         apt-get install wget -y

         apt-get install make -y

         apt-get install sysstat -y

	 apt-get install net-tools -y
else

         echo "pakages did not install"
fi
