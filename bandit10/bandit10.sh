#!/bin/bash

password=$(cat data.txt | base64 -d | awk 'NF{print $NF}')

echo $password
