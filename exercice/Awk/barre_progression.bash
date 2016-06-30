#!/bin/bash


#Barre de progression d'une tâche, d'une installation, d'un traitement en pourcentage
echo "Calcule le nombre de dossier pour la barre de progression"
init=${1-*}
#Cette ligne compte le nombre de repertoire mais exclus les fichiers caché
#LE Shell pattern \*/.\* n'est pas un eexpression rationnelle les back-slash sont juste la pour empêcher 
#le shell de l'interpréter lui-même. Ça laisse donc */.* qui va être comparé au chemin complet du fichier (-path), comme le slash est le séparateur de noms de fichiers ça signifie tout le fichier dont le nom commence par un point
number=$(find $init -type d -prune -path \*/.\* | wc -l) 2>/dev/null
nb_dossier=0
BCDIR=$(which bc)
I=1


function explore_repertoire
{
	PROGRESS=`$BCDIR -l <<< "($I/$number)*100"`
	echo -e "Progression : $PROGRESS%"
	((I++))
	((nb_dossier++))
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
echo "nombre de dossier traiter $nb_dossier"
echo "Le nombre de dossier trouver pour la barre de progression $number"
