#!/bin/bash

VERSION=3.14
while getopts ":hv-:" option ; do
	if [ "$option" = "-" ] ; then
		case $OPTARG in
			help ) option=h ;;
			version ) option=h ;;
			* ) echo "Option $OPTARG inconnue" ;;
		esac
	fi
	case $option in
		h ) echo "Syntaxe : $(basename $0) [option...]"
			echo " Options :"
			echo " -v --version : Numéro de version"
			;;
		v ) echo "Version $(basename $0) $VERSION" ;;
		? ) echo "Inconnu" ;;
	esac
done
