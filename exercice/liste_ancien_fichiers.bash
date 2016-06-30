#!/bin/bash


#Liste les fichiers selon leur anciennete (paramétrable)

try_file_date()
{
	for f in "$@" ; do
		if [ -f $f ] ; then
#Renvoie le temp écoule en second depuis le 1er janvier 1970 0h 0m 0seconde dans une chaine concatener a chaque fois
#delimiteur de date caractère #
			result+=$(stat --format=%Y $f)"#"
			echo $result
		fi
	done
	awk 
}

if [ $1 = "-d" ] ; then
	#Classé par ordre décroissant(Du plus récent au plus vieux)
	ordre="d"
	try_file_date $ordre $@
elif [ $1 = "-c" ] ; then
	#Classé par ordre croissant (Du plus vieux au plus récent)
	ordre="c"
	try_file_date $ordre $@
else
	echo "Pas d'option renseigner -d pour decroissant et -c pour croissant"
fi
