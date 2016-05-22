#!/bin/bash
echo "Appliquer une valeur par default à une variable dans le cas ou elle n'aurait pas été remplie corectement"
var=existante
echo ${var:-defaut}
echo "affiche la valeur de la variable # $var # si elle et initialisé sinon appliquera la valeur defaut"
echo "meme exemple avec une variable inexistente"
echo ${variable:-defaut}
echo "comme la variable n'existe pas l'opérateur $ avec :- la valeur defaut"

echo "Dans tous les cas le contenu même de la variable ne change pas"

echo "Autre possibilité avec la construction \${variable:=valeur} qui affecte la valeur à la variable pour une prochaine utilisation"
echo "Exemple avec ma variable qui et vide "
echo ${vide:=contenu}
echo "La veleur $vide à été atribuée a la varible vide et comme elle n'éxistait pas elle a ete créer"


