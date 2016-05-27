#!/bin/bash

echo "Voici la liste des fichiers qui va être push : "
git status

echo "Confirmer l'envoie : "
read reponse

if [ $reponse = "q" ] ; then
	return 1;
fi
if [ $reponse="y" ] ; then

	echo -n "Entrer le message de commit : "
	read reponse
	git add -A ; git commit -m "$reponse" ; git push origin master
fi

	echo "Bonne journée ! "
