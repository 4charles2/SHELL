#!/bin/bash

#L'option c et l'option d peuvent prendre des arguments signifié avec les deux (:)
while getopts "abc:d:" option ; do
	echo -n "Analyse argument numéro $OPTIND : "
	case $option in
		a ) echo "Option A" ;;
		b ) echo "Option B" ;;
		c ) echo "Option C, argument $OPTARG" ;;
		d ) echo "Option D, argument $OPTARG" ;;
		? ) echo "Inconnu" ;;
	esac
done
echo $OPTIND
echo $#
shift $((OPTIND - 1))
while [ $# -ne 0 ] ; do
	echo "Argument suivant : " $1
	shift
done
