#!/bin/bash

<< 'comment'
read -p "enter the collage to be check : " clg

if [[ $clg == "KLE" ]]; then
        echo "she studied in $clg"
else
        echo "clg is un known"

fi

comment


read -p "Enter the file to be check" file

if [[ -f $file ]]; then

        echo "file $file exists"
else
        echo "file $file does not exist"

fi
