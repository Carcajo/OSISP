#!/bin/bash

 
generate_coordinates() {
    echo "$((RANDOM % COLUMNS)) $((RANDOM % LINES))"
}


seed=$(date +%s)
RANDOM=$(($seed % 32768))

while true; do

    coordinates=$(generate_coordinates)


    clear
    tput cup $coordinates 
    echo "$(date +%H:%M:%S)"


    sleep 10
done

