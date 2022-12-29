#!/bin/bash

# one liner
# find . | xargs file -i | grep -v "profile\|bash" | grep "text/plain\|charset=us-ascii" | awk '{print $1}' | cut -d ':' -f 1 | xargs ls -l | grep 1033 | awk '{print $9}' | xargs cat | xargs

filename=$(find . -size 1033c)
password=$(cat $filename | xargs)

echo $password
