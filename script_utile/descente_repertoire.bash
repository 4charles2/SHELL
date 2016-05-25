#!/bin/bash

function explore_repertoire
{
	local f
	local i
	#Faire précéder le nom du répertoire reçu en premier
	#argument par autant de caractères blancs que la 
	#valeur du second argument/
	i=0
	while [ $i -lt $2 ] ; do
		echo -n " "
		i=$((i+1))
	done
	echo "$1"
	#Se déplacer dans le 1er répertoire. Si échec -> abandon
	if ! cd "$1" ; then return ; fi
	#Balayer tout le contenu du répertoire
	for f in * ; do
		#Sauter les liens symboliques
		if [ -L "$f" ] ; then
			continue
		fi
		#Si on a trouvé un sous-répertoire, l'explorer en
		#incrémentant sa position (de 4 pour l'esthétique)
		if [ -d "$f" ] ; then
			explore_repertoire "$f" $(($2 + 4))
		fi
	done
	#Revenir dans le répertoire initial
	cd ..
}

#Lancer l'exploration à partir de l'argument
explore_repertoire "$1" 0
