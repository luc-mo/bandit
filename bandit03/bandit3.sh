#!/bin/bash

pathname="$(pwd)/inhere"
filename=$(ls -a $pathname | tail -n 1)
password=$(cat "$pathname/$filename")

echo $password
