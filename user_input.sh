#!/bin/bash


read -p "he ordered a how many cakes from a pastryshop" cake

read -p "he distributed that in how many people people" people

share=$((cake/people))

echo "each person got $share"
