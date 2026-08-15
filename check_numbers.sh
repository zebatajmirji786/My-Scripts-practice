#!/bin/bash

read -p "enter the number to be checked : " num

if [[ $num -gt 0 ]];then
        echo "number is possitive"

elif [[ $num -lt 0 ]];then
        echo "number is negative"

else
        echo "number is zero"

fi
