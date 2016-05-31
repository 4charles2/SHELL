#!/bin/bash

numero_mystere=0

while [ $numero_mystere -gt 1000 ] || [ $numero_mystere -lt 1 ] ; do
	echo "Entrez un nombre entre 1 et 1000"
	echo "Je vais le deviner"
	read numero_mystere
	if [ $numero_mystere -gt 1000 ] || [ $numero_mystere -lt 1 ] ; then
		echo "Vous n'avez entrez un nombre entre 1 et 1000 recommencer !"
	fi
done
sequence=100
i=0

while [ $numero_mystere -ne $i ] ; do
	answer "Le nombre est-il plus grand que $i"
	resultat=$?
	if [ $resultat -eq 1 ] ; then
		echo "je soustrait"
		((i-=sequence))
		((sequence/=10))
	elif [ $resultat -eq 0 ] ; then 
		echo "j'additionne"
		((i+=sequence))
	fi
done

echo "Bravo vous avez trouvé le nombre mystère"
