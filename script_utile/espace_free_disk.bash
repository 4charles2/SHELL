#!/bin/bash
#Affiche l'espace disponible sur la partition en cours d'utilisation du disque
#dur
echo -n "Il reste encore : "
echo $(df -k . | tail -1 | sed "s/  */ /g" | cut -d " " -f 4) ko
echo $(df --block-size=1000K . | tail -1 | sed "s/  */ /g" | cut -d " " -f 4)Mo
echo $(df --block-size=1000000K . | tail -1 | sed "s/  */ /g" | cut -d " " -f 4)Go

