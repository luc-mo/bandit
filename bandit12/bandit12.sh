#!/bin/bash

# parse data file
# xxd -r data parsed_data

function ctrl_c() {
	echo -e "\n\n[!] Saliendo..."
	exit 1
}

# ctrl + c
trap ctrl_c SIGINT

initial_file_name="parsed_data"
decompressed_file_name="$(7z l parsed_data | tail -n 3 | head -n 1 | awk 'NF{print $NF}')"
previous_file_name="$decompressed_file_name"

7z x $initial_file_name &>/dev/null

while [ $decompressed_file_name ]; do
	7z x $decompressed_file_name &>/dev/null
	decompressed_file_name="$(7z l $decompressed_file_name 2>/dev/null | tail -n 3 | head -n 1 | awk 'NF{print $NF}')"

	if [ ! $decompressed_file_name ]
	then
		cat $previous_file_name | awk 'NF{print $NF}'
		rm $previous_file_name
	else
		rm $previous_file_name
		previous_file_name=$decompressed_file_name
	fi
done
