#!/bin/bash

diff passwords.old passwords.new | tail -n 1 | awk '{print $2}'