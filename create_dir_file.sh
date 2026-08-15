#!/bin/bash

<< 'comment'
echo "dir to be c reated is $1"

mkdir -p $1

echo "file to be craeted is $2"

cd $1

touch $2

echo "directory created is : $1"

echo "file created is : $2"

comment


<<'add'
read -p "enter the name of the file to be craeted : " file

touch "$file" && echo " this is the new file : $file" || echo "file $file did not get create"

add


read -p "enter the file to be delete : " file

rm "$file" && echo "file got deleted" || echo "file did not get delete"
