#!/bin/bash


#Tue tous les processus de l'utilisateur fournie en arguement

if [ $1 ] ; then
	pkill -u "$1"
else
	echo "Vous n'avez pas renseigné d'utilisateur"
fi
