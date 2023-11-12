#!/bin/bash

show_buttons() {
	selected=$(whiptail --title "Development enviroment" --menu "Select development enviroment:" 15 60 4 \
		"Java" "Press ENTER to select" \
		"Rust" "Press ENTER to select" \
		"Node" "Press ENTER to select" \
		"React native" "Press ENTER to select" 3>&1 1>&2 2>&3)

	echo "$selected"
}

result=$(show_buttons)

if [ "$result" ]; then

	whiptail --title "Selected button" --msgbox "You selected: $result" 10 60

	if [ "$result" == "Rust" ]; then
	    echo "Rust install"
	fi

	whiptail --title "Download completed" --msgbox "Download completed" 10 60

	
else
	whiptail --title "Button not selected" --msgbox "No button was selected." 10 60
fi

