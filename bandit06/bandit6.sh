#!/bin/bash

filename=$(find / -user "bandit7" -group "bandit6" -size 33c 2>/dev/null)
password=$(cat $filename)

echo $password
