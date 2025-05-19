#!/bin/bash

Blue=$'\e[1;34m'
Reset=$'\e[0m'


while true
do
    clear
    echo "${Blue}🕒 Heure actuelle : $(date +%T)${Reset}"
    sleep 1
done
