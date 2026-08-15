#!/bin/bash

echo "updating the packages $1"

sudo apt-get update -y

echo "imnstalling the packages $1"

sudo apt-get install $1 -y
