#!/bin/bash

for i in "$@" ; do
	echo "$i : "
	if [ -L "$i" ] ; then echo " (lien symbolique) " ; fi
	if [ -e "$i" ] ; then
		echo -n " type = "
		if [ -b "$i" ] ; then echo "special bloc" ; fi
		if [ -c "$i" ] ; then echo "special caractère " ; fi
		if [ -d "$i" ] ; then echo "répertoire" ; fi
		if [ -f "$i" ] ; then echo "fichier regulier" ; fi
		if [ -p "$i" ] ; then echo "tube nommé " ; fi
		if [ -S "$i" ] ; then echo "socket " ; fi
		echo -n " bits = "
		if [ -g "$i" ] ; then echo -n "Set_GID " ; fi
		if [ -u "$i" ] ; then echo -n "Set-UID " ; fi
		if [ -k "$i" ] ; then echo -n "Sticky " ; fi
		echo ""
		echo -n " accès = "
		if [ -r "$i" ] ; then echo -n "lecture "; fi
		if [ -w "$i" ] ; then echo -n "écriture "; fi
		if [ -x "$i" ] ; then echo -n "execution "; fi
		echo ""
		if [ -G "$i" ] ; then echo " appartient à notre GID"; fi
		if [ -O "$i" ] ; then echo " appartient à notre UID"; fi
	else
		echo " n'existe pas"
	fi
done
