#!/bin/bash

i=$(uname -r)

case "$i" in
	3.*) Type_noyau="3" ;;
	2.6.*) Type_noyau="2.6" ;;
	2.4.* | 2.5.*) Type_noyau="2.4" ;;
	2.* | 1.* | 0.*) echo "Trop ancien, impossible de continuer"
			exit 1 ;;
	*) Type_noyau="Inconnu"
		echo "Noyau inconnu ; continuer l'installation ?"
		read Reponse
		case "$Reponse" in
			O* | o* | Y* | y*)
				echo OK;;
			*) exit 1;;
		esac ;;
esac
echo "Instalation pour noyau de type $Type_noyau"
