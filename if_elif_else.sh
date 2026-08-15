#!/bin/bash

read -p "who is the best friend of Hermionie : " friend

if [[ $friend == "Harry" ]]; then
        echo "Yes, you are right"

elif [[ $friend == "Ron" ]]; then
       echo "Yes, but they got married"

else
       echo "you need to watch it again"

fi
