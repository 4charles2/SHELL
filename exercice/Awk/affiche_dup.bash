#!/bin/bash


#Rechercher les fichiers identiques dans une liste fournie en argument

dup=0
for f in "$@" ; do
	echo "Recherche de duplicata de $f";
	for dupf in "$@" ; do
		if [ $f == $dupf ] ; then
			((dup++))
		fi
	done
	((dup--))
	echo "$f à $dup duplicata";
	dup=0;
done
echo "Le nombre de fichier lu est $#";
