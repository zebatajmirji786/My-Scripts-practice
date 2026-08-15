#!/bin/bash

local_var(){
	local name="zeba"
	echo "name is a local variable so it wont print outside the function : $name "

}

regular_var(){
	age=27
	echo "age is a regular variable so i will proint outside of the function also : $age"


}

local_var
echo "ouside it wont print : $name"

regular_var
echo "outside it will print : $age"

