#!/bin/bash


<< comment
read -p "enter number of students : " students
read -p "enter number of teams to be made : " teams


team_members=$((students%teams))

echo "student left without team are : $team_members"

comment

a=20
b=10

echo $((a + b))   # 30
echo $((a - b))   # 10
echo $((a * b))   # 200
echo $((a / b))   # 2
echo $((a % b))   # 0
