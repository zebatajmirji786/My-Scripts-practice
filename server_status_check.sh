#!/bin/bash

service="nginx"

read -p "do you want to check the status? (y/n)" status

if [[ $status == y ]];then
        echo "$(systemctl status $service)"

elif [[ $status == n ]];then
       echo "skipped"
else
       echo "wrong option sellected"

fi
