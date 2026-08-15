#!/bin/bash

<< 'comment'
read -p "total number of students are : " student

read -p "total teams to be made are : " team

result=$(echo "scale=2; $student / $team" | bc )

echo "total number of students each meam consists of : $result"

comment


echo "total mount taken as loan $1"

echo "the percent interest applied is $2"

result=$(echo "scale =2; $1 * ( $2 /100 )" | bc)

echo "the amount to be paid next is : $result "
