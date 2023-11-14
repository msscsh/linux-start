#!/bin/bash

download_file() {

	i=0
	while [ $i -le 100 ]; do
		sleep 1 
		echo $i 
		i=$((i + 10))
	done
}

draw_progress_bar() {
	local progress=$1
	local bar_length=50
	local num_chars=$((progress * bar_length / 100))

	local bar=$(printf "%-${num_chars}s" "#" | tr ' ' '#')
	printf "[%-50s] %d%%\r" "$bar" "$progress"
}

main() {
	download_file | while read -r progress; do
						draw_progress_bar "$progress"
					done
	echo -e "\nCompleted!"
}

main