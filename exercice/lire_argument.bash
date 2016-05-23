#!/bin/bash
echo " jsute le nom de la variable"
echo $1
echo "avec eval"
eval echo $1
echo "avec cat"
echo $(cat $1)
echo "essaie d'ecrire dans le fichier en argument"
echo "coucou" > $1
echo $1
echo 1
echo $(cat $1)
