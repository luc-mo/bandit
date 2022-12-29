#!/bin/bash

password=$(cat data.txt | sort | uniq -u)

echo $password
