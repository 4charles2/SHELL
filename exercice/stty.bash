#!/bin/bash

sauvegarde_stty=$(stty -g)
stty -icanon time 1 min 0 -echo

touche=""
while [ -z "$touche" ] ; do
	read touche
done
echo "Touche pressé = " $touche

stty $sauvegarde_stty
