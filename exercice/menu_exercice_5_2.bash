#!/bin/bash

cat <<FIN
	***************************
	***************************
		Menu de choix :
	1) Numéro 1
	2) Numéro 2
	3) Numéro 3
	4) Revoir la liste des options
	5) Netoyer l'écran du terminal
	6) Afficher le repertoire conrant
	7) Page d'aide
	8) Quittez le programme
	9) Numéro 9
	10) Numéro 10
FIN

while true ; do
	echo -n "Entrer votre choix : "
	read
	case $REPLY in
		1 ) echo "choix Numéro 1" ;;
		2 ) echo "choix Numéro 2" ;;
		3 ) echo "choix Numéro 3" ;;
		4 ) echo "Revoir la liste des options : "
			./menu_exercice_5_2.bash
			;;
		5 ) clear
			echo "ecran nettoyez"
			./menu_exercice_5_2.bash
			;;
		6 ) echo "Afficher la liste des fichiers"
			for i in * ; do
				echo "$i"
			done
				;;
		7 ) echo -e "Page de manuel . \nchoisissez votre numero de commande pour l'executer"
			;;
		8 ) echo "au revoir" ; break ;;
		9 ) echo "Vous avez choisie le numéro 9" ;;
		10 ) echo "Vous avez choisi le numéro 10" ;;
		* ) echo " Vous n'avez pas entrer un bon chois"
	esac
done
