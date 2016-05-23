#!/bin/bash

if [ -n "$1" ]; then
	echo "Le chemin du fichier : "${1%/*}
	echo "Le nom du fichier : "${1##*/}
fi
