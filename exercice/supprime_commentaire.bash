#!/bin/bash

for fic in "$@" ; do
#Supprimons les lignes blanches
	sed -e '/^[[:blank:]]*$/d' $fic |
	sed -e '/^[[:blank:]]*#/d'
done
