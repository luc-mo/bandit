#!/bin/bash

function ctrl_c() {
  echo -e '\n\n[!] Saliendo...\n'
  # recuperar el cursor
  tput cnorm
  exit 1
}

# ctrl + C
trap ctrl_c SIGINT

# ocultar el cursor
tput civis

for host in $(seq 1 254); do
  timeout 1 bash -c "ping 192.168.1.$host &>/dev/null" && echo "[+] Host 192.168.1.$host - ACTIVE" &
done; wait

# recuperar el cursor
tput cnorm