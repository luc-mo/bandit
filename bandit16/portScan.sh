#!/bin/bash

function ctrl_c() {
  echo -e '\n\n[!] Saliendo...\n'
  tput cnorm
  exit 1
}

# ctrl + C
trap ctrl_c SIGINT

# ocultar el cursor
tput civis

for port in $(seq 1 65535); do
  timeout 1 bash -c "(echo '' > /dev/tcp/127.0.0.1/$port) 2>/dev/null" && echo "[+] Puerto $port - OPEN" &
done; wait

# recuperar el cursor
tput cnorm

# alternative solution
# nmap --open -T5 -v -n -p31000-32000 127.0.0.1