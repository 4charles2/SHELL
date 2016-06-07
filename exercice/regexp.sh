#!/bin/bash

EXPRESSION="$1"
#Eliminons l'expression des arguments de ligne de commande :
shift
#Puis comparons-la avec les chaînes :
for chaine in "$@" ; do
	echo "$chaine" | grep "$EXPRESSION" > /dev/null
	if [ $? -eq 0 ] ; then
#equal à zero car en shell zero signifie ok et autre non
		echo "$chaine : OUI"
	else
		echo "$chaine : NON"
	fi
done
