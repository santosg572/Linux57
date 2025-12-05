#!/bin/bash

maquina="tournoux"

while IFS= read -r line
do
  dd="$line"
  c1=$(echo $dd | cut -d ' ' -f 1)
#  echo $c1
  c2=$(echo $dd | cut -d ' ' -f 3)
#  echo $c2
  if [[ "$c2" == "$maquina" ]]; then
    echo $c1
  fi
done < hosts.txt


