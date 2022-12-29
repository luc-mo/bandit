#!/bin/bash

password=$(strings data.txt | grep "==" | tail -n 1 | awk '{print $2}')

echo $password

