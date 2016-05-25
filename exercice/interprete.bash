#!/bin/bash

while true ; do
	echo -n "[Commande]>"
	if ! read chaine ; then
#Si read renvoie un code erreur
		echo "Saisie invalide"
		break;
	fi
	if [ -z "$chaine" ] ; then
		echo "Saisie vide"
		break
	fi
	if [ "$chaine" = "fin" ] ; then
		echo "Fin demandée"
		break;
	fi
	eval $chaine
done
echo "Au revoir"
