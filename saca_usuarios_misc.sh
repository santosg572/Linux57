#!/bin/bash

dd=$(cat misc_lista.txt)

for ss in $dd
do
  echo "-------------------------------- " $ss " --------------------------------"
  sshpass -p carlos21 ssh santosg@172.24.220.101 'bash -s' < script_usuarios.sh $ss
done



