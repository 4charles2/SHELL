#!/bin/bash

OLDDIR=$(pwd)

cd /home/doc2rue/Bureau/site_php_free/site_php/pages/script/

site=${1:-4charles2.free.fr}
chemin=${2:-pages/script}
fichier=${3:-script.php}

LOGIN=${4:-4charles2}
PASSWORD=${5:-Sihame1986}

if [ -f ~/.netrc ] ; then
	mv ~/.netrc ~/.netrc.back
fi

ANCIEN_UMASK=$(umask)

umask 0177
	echo machine $site > ~/.netrc
	echo login $LOGIN >> ~/.netrc
	echo password $PASSWORD >> ~/.netrc
umask $ANCIEN_UMASK

ftp << FIN
	open $site
	bin
	cd $chemin
	send $fichier
FIN

rm -f ~/.netrc
if [ -f ~/.netrc ] ; then
	mv ~/.netrc.back ~/.netrc
fi

echo "Retour au repertoire courant avant le lancement du script"
cd $OLDDIR
