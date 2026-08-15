#!/bin/bash

read -p "enter the name of service to be checked : " service
read -p "Do you wish to install the service : " install


if systemctl list-unit-files --type=service | grep "$service" ; then
        echo "service $service exists"
        exit 1

elif [[ $install == "yes" ]]; then
        sudo apt-get install $service -y
else
        echo "service $service does not exist"


fi
