#!/bin/bash

function answer
{
	if [ -z "$1" ] ;then
		echo "Vous n'avez pas entrer d'argument"
		return 1;
	fi
	while true ; do
		echo "$1"
		echo -n "Quel est votre réponse : "
		read
		if [[ ${REPLY#^} = [oOYy]* ]] ; then
			return 0
		elif [[ ${REPLY#^} = [nN]* ]] ; then
			return 1
		fi
	done
}
