#!/bin/bash

source ./system_info.sh

read -p "enter the system info you want to check : " info 

if [[ $info == "ram" ]]; then
	check_storage

elif [[ $info == "disk" ]]; then
	check_disk
else 
	echo "wrong option entered"

fi
