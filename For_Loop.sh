#!/bin/bash

<< 'comment'
read -p "Enter the total numver of users to be checked : " num

for  ((i=1; i<=num; i++ ));
do

read -p "Enter the user to be checked : " user
if cat /etc/passwd | grep $user; then
        echo "user $user exists"
else
        echo "user $user does not exists"

fi

done

comment

read -p "Enter the number : " num


for (( i=1; i<=num ; i++ ))

do
        echo "print"


done
