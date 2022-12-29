#!/bin/bash

filename=$(file inhere/* | grep -v data | awk '{print $1}' | cut -d ':' -f 1)
password=$(cat $filename)

echo $password
