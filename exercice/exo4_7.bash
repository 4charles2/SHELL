#!/bin/bash

#Obtenir les informations su les fichiers

for i in * ; do
	echo "*****************************************************************************************************"
	echo "*****************************************************************************************************"
	echo "******************************Information sur le fichier $i******************************************"
	echo "*****************************************************************************************************"
	echo "*****************************************************************************************************"
	if [ -e $i ] ; then 
		echo "Le fichier existe : $i "
		if [ -s $i ] ; then 
			echo "Est à une taille supérieure à zéro : $i "
		else
			echo "Il est vide"
		 fi
	else 
		echo "Le fichier n'existe pas"
		continue
	fi
	echo "*****************************************************************************************************"
	echo -n "type = "
	if [ -b $i ] ; then echo "c'est un fichier de bloc spécial" ; fi
	if [ -c $i ] ; then echo "c'est un fichier de caractère spécial" ; fi
	if [ -d $i ] ; then echo "c'est un repertoire" ; fi
	if [ -f $i ] ; then echo "c'est un fichier régulier" ; fi
	if [ -p $i ] ; then echo "c'est un pipe" ; fi
	if [ -S $i ] ; then echo "c'est un fichier socket" ; fi
	if [ -k $i ] ; then echo "c'est un sticky bit" ; fi
	if [ -h $i ] ; then echo "c'est un lien symbolique" ; fi
	if [ -L $i ] ; then echo "c'est un lien symbolique" ; fi
	echo "*****************************************************************************************************"
	echo -n "Appartenance = "
	if [ -g $i ] ; then echo "appartient au set_group id" ; fi
	if [ -G $i ] ; then echo "appartient au groupe ID" ; fi
	if [ -o $i ] ; then echo "Appartient à l'utilisateur USER ID" ; fi
	if [ -t $i ] ; then echo "Si le fichier est ouvert dans un terminal" ; fi
	if [ -u $i ] ; then echo "il est set-user-ID" ; fi
	echo "*****************************************************************************************************"
	echo -n "c'est un fichier qui a les Droit accès = "
	if [ -r $i ] ; then echo -n "de lecture " ; fi
	if [ -w $i ] ; then echo -n "d'écriture " ; fi
	if [ -x $i ] ; then echo "d'exécution " ; fi
done
