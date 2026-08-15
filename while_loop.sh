#!/bin/bash

read -p "Enter the number of time you want to repeat the task : " task

num=1

while [[ $num -le $task ]];
do
        echo "Hello"
        num=$((num+1))
done
