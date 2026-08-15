#!/bin/bash

set -euo pipefail

name="zeba"
fname="zebataj"
file="name.txt"
dir="/tmp/text"

echo "my name is $fname"

touch $file

echo "file $file created successfully"


cat /nonexixt/file | grep "HI"

echo "thi will not run"
