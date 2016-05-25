#!/bin/bash

function additionne
{
	#Cette routine additionne tous ses arguments, et
	#affiche le résultat sur la sortie standard
	local somme
	local i
	somme=0
	for i in "$@" ; do
		somme=$((somme + i))
	done
	echo $somme
}
#Appeler la fonction avec les arguments reçus
#en ligne de commande.
additionne "$@"
