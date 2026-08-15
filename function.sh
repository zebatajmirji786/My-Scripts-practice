#!/bin/bash

greet(){
	
	echo "Hello, $1"

}

add(){
	read -p "enter the two numbers : " num1 num2
	
	echo "$((num1+num2))"


}


greet "$1"
add
