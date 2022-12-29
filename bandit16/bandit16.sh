#!/bin/bash

# excecute portScan.sh and try to find the correct port

ncat --ssl 127.0.0.1 $port
# paste --> JQttfApK4SeyHwDlI9SXGR50qclOAil1
# response --> ssh private key, save it as id_rsa

# connect to bandit17
ssh -i id_rsa bandit17@localhost

# found bandit17 password on /etc/bandit_pass/bandit17