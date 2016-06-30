#!/bin/bash

#PAramétrage du transfert désiré

MACHINE=${1:?Pas de machine indiquée}
CHEMIN=${2:?Pas de chemin indiqué}
FICHIERS=${3:?Pas de fichiers indiqués}

LOGIN=${4:-LOGIN}
PASSWORD=${5:-PASSWORD}

#D'abord sauver l'éventuel fichier ~/.netrc

if [ -f ~/.netrc ] ;then
	mv ~/.netrc ~/.netrc.back
fi

#Créer un nouveau ~/Bureau/SHELL/SHELL/exercice/.netrc
#avec uniquement les infos concernant la connexion voulue

ANCIEN_UMASK=$(umask)

umask 0177
echo machine $MACHINE > ~/.netrc
echo login $LOGIN >> ~/.netrc
echo password $PASSWORD >> ~/.netrc
umask $ANCIEN_UMASK

#Lancer la connexion
ftp <<- FIN
	open $MACHINE
	bin
	prompt
	cd $CHEMIN
	get $FICHIERS
	quit
FIN

#Effacer .netrc et récupérer l'ancien

rm -f ~/.netrc
if [ -f ~/.netrc ]; then
	mv ~/.netrc.back ~/.netrc
fi
