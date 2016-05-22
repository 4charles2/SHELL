#!/bin/bash

#Cette ligne execute la commande grep 
ligne_path=$(grep "Path: ")
#Cette ligne enleve le prefixe Path
liste_serveurs=${ligne_path##Path: }
#Tant que $liste_serveur est non null
while [ -n "$liste_serveurs" ] ; do

	serveur=${liste_serveurs%%!*}
	liste_serveurs=${liste_serveurs#$serveur}
	liste_serveurs=${liste_serveurs#!}
	echo $serveur
done
