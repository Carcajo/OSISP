#!/bin/bash

# Собственная функция для генерации случайных чисел
my_random() {
    local seed=$1
    local factor_a=1103515245
    local factor_c=12345
    local modulo=32768
    seed=$(( (seed * factor_a + factor_c) % modulo ))
    echo $seed
}

generate_coordinates() {
    local seed=$1
    local x=$(my_random $seed)
    local y=$(my_random $x)
    echo "$((x % COLUMNS)) $((y % LINES))"
}

seed=$(date +%s)

while true; do
    coordinates=$(generate_coordinates $seed)
    clear
    tput cup $coordinates 
    echo "$(date +%H:%M:%S)"
    sleep 10
done

