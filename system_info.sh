#!/bin/bash

check_storage() {
	echo "Available memory is : $(free -h | awk 'NR==2 {print $4}')"

}

check_disk(){

	echo "Available disk is : $(df -h | awk 'NR==2 {print $4}')"

}



