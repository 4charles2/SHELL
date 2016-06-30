#!/bin/bash

local $reponse=

echo "Voici la liste des fichiers qui va être push : "
git status

while true ; do
	echo "Confirmer l'envoie : "
	read reponse
	if [ $reponse = "q" ] ; then
		echo "Au revoir"
		exit
	elif [ $reponse = "y" ] ; then

		echo -n "Entrer le message de commit : "
		read reponse
		git add -A :/ ; git commit -m "$reponse" ; git push origin master
		break;
	else
		echo "Vous avez entrer un mauvais choix : "
	fi
done

echo "Bonne journée ! "
