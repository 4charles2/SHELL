#!/bin/bash

#Cette fonction reçoit en argument le nom d'un fichier, et
#propose les diffèrentes actions possibles.

function action_fichier ()
{
	local reponse
	local saisie

	echo "*******************************"
	PS3="
Action sur $1 : "
	select reponse in Infos Copier Déplacer Détruire Retour ; do
		case $reponse in
		Infos )
			echo
			ls -l $1
			echo
			;;
		Copier )
			echo -n "Copier $1 vers ? "
			if ! read saisie ; then continue ; fi
			cp $1 $saisie
			;;
		Déplacer )
			echo -n "Nouvel emplacement pour $1 ? "
			if ! read saisie ; then continue ; fi
			mv $1 $saisie
			break
			;;
		Détruire )
			if rm -i $1 ; then break; fi
			;;
		Retour )
			break
			;;
		* ) if [ "$REPLY" = "O" ] ; then break ; fi
			echo "$REPLY n'est pas une reponse valide"
			echo
			;;
		esac
	done
}

#Cette routine affiche la liste des fichiers présents dans
#le répertoire, et invoque la fonction action_fichier si la
#saisie est correcte. Elle se termine si on sélectionne "0"
function liste_fichiers ()
{
	echo "*****************************************"
	PS3="Fichier à traiter : "
	select fichier in * ; do
		if [ ! -z "$fichier" ] ; then
			action_fichier $fichier
			return 0
		fi
		if [ "$REPLY" = "0" ] ; then
			return 1
		fi
		echo "==> Entrez 0 pour Quitter"
		echo
	done
}

#Exemple de boucle tant qu'une fonction réussit.
#Le deux-points dans la boucle signifie "ne rien faire"
while liste_fichiers ; do : ; done
