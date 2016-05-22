#!/bin/bash

fichier=/usr/src/linux/kernel/sys.c
echo "Recuperer le nom de fichier a l'adresse :"
echo $fichier
echo "Recupere le nom du fichier "
echo ${fichier##*/}

echo "Eliminer l' extension éventuelle d'un nom de fichier : "
fichier=monfichier.bash
echo $fichier
echo ${fichier%.*}
fichier=projet.module.h
echo $fichier
echo ${fichier%.*}

