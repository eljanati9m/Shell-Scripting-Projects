#!/bin/bash


days=4

current=$(date +%s)

for file in *
do
  if [ -f "$file" ] && [ $(($current - $(date +%s -r "$file"))) -gt $(($days * 24 * 60 * 60)) ]
  then
    rm "$file"
  fi
done
