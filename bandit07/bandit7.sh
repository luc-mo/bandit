#!/bin/bash

password=$(cat data.txt | grep millionth | awk '{print $2}')

echo $password
