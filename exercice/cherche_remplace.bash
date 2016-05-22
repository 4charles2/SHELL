#!/bin/bash
variable=ABCDEFGHIJKLMNOPQRSTUVWXYZ
echo "Ma variable : "$variable

echo "Afficher le repertoire de travail en cour et remplacer le repertoire personnel par myhome"
echo $PWD
echo ${PWD/$HOME/myhome}
echo "Remplace $HOME par ~"
echo ${PWD/$HOME/\~}
