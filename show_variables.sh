#!/bin/bash

read -p "Enter his full name" full_name

read -p "enter his carrer" job

echo "Hello $full_name, good to see you as $job"

<<comment1
work="footballer"

echo "His name is : $name"

echo "He is a : $work"
comment1

<< comment2
echo "my current user is $USER"

echo "my current logged in user (command) $(whoami)"

echo "todays date is $(date)"

comment2
