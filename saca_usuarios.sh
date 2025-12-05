#!/bin/bash

IFS=$'\n'

files=$(cat hosts.dat)

#files=`cat hosts_nuevo.txt | tr -s " " | cut -d " " -f4`

for i in {1..40}
do
  echo "==================== " $i
for fil in ${files}
do
  ss=${fil:0:1}
  if [ "$ss" = "1" ]; then
    echo "======================================="
    ipN=`echo $fil | tr -s " " | cut -d " " -f4`
    maquina=`echo $fil | tr -s " " | cut -d " " -f3`
    ipO=`echo $fil | tr -s " " | cut -d " " -f1`
    adaptador=`echo $fil | tr -s " " | cut -d " " -f5`
#    echo "ipN: "${ipN}
    echo "maquina: "${maquina}
#    echo "ipO: "${ipO}
#    echo "adaptador: "${adaptador}
     dd=`sshpass -p carlos21 ssh santosg@${ipO} 'hostname; who'`
     num=${#dd}
     echo "MAQ: "$dd " ----- " $num
#     ssh santosg@${ipO} 'hostname'
#    ./crea_01_new.sh ${ipN} ${adaptador} ${maquina}
#    ./crea_01_old.sh ${ipO} ${adaptador} ${maquina}
  fi
done

sleep 60
done

