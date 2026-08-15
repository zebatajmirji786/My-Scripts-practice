#!/bin/bash

list="nginx curl wget"

for item in $list;
do



    if dpkg -s $item &> /dev/null
    then
        echo "$item is already installed"
    else
        echo "$item is not installed. Installing..."
        
        sudo apt install -y $item
        echo "$item installation completed"
    fi
done
