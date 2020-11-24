#!/bin/sh

touch resultat.txt

adresse_ip=$(ip addr show dev eth0 | grep eth0 | grep inet | awk '{print $2}')
espace_disque_dispo=$(df -h | awk '{print $4}')
cpu=$(top -n1 -b | awk '{print $9}')

resultat="
adresse ip :
$adresse_ip

espace disque dispo:
$espace_disque_dispo

cpu:
$cpu
"
echo "$resultat">>resultat-script.txt

scp -r -p resultat-script.txt superv@adresseip-debian:/tmp/resultat-script-centos.txt

rm  resultat-script.txt
