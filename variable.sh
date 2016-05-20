#! /bin/sh

variable="bonjour"
suite=" monsieur"
strcat=$variable$suite
other=$variable_$suite #Cette variable va produire une erreur car le shell (/bin/bash) va chercher une premiere variable qui se nomme $variable_ alors qu'elle n'éxiste pas
autre=${variable}_${suite}
echo -n "Devrai afficher bonjour : "
echo $variable
echo -n "Devrai afficher bonjour monsieur : "
echo $strcat
echo -n "Devrai afficher bonjour_ monsieur : "
echo $ohter
echo -n "Devrai afficher bonjour_ monsieur: "
echo $autre

###################################################################################################################################################################################################################################
###################################################################################################################################################################################################################################
#Autre possibilite Avec les variable
###################################################################################################################################################################################################################################
###################################################################################################################################################################################################################################

my="charles"
last=" tog"

echo -n "Devrait afficher charles tog : "
echo $my.$last #Cette solution fonctionne mais le point et afficher aussi
echo -n "Devrait afficher charles tog : "
echo $my@$last #Fonctionne mais affiche le symbole @ au milieu comme pour le point
echo -n "Devrait afficher charles tog : "
echo $my-$last #Pareil affiche le - au milieu
#Resumer on peut coller deux variables sans les entourer avec {} avec des caractère interdit dans les noms de variables mais il faut avoir conscience qu'il apparaitront

#Ont peut utiliser les "" pour entourer le caractere ou les caracteres présent entre deux variable
echo "prenom : "$my" nom "$last


###################################################################################################################################################################################################################################
###################################################################################################################################################################################################################################
#Exemple d'utilisation des opérateur d'extraction de sous chaine dans une variable
###################################################################################################################################################################################################################################
###################################################################################################################################################################################################################################

var=ABCDEFGHIJKLMNOPQRSTUVWXYZ

echo "les : ne fonctionne pas chez moi pour l'extraction de sous chaine"
#echo "On enleve les 5 premieres lettres et on affiche les 2 suivantes"
#echo ${var:5:2} #enleve les 5 premieres letres
#echo "J'enleve les 20 premieres lettres :"
#echo ${var:20} #enleve les 20 premieres lettres

#Autres façon de faire avec l'opérateur #
var1=AZERTYUIOPAZERTYUIOP
echo "variable utilisé "$var1
echo "Utilisation de l'opérateur #"
echo "Si la chaine commence par AZE alors on l'enleve"
echo ${var1#AZE}
echo "elimine tout jusqu'au premier T rencontrer si pas de T rien c'est * qui permet de ne pas s'arreter au premier caractere"
echo ${var1#*T}
echo ${var1#T*}
echo "Si la variable commence par un T on l'enleve sinon rien"
echo ${var1#T}
echo "elimination de prefixe a la premiere lettre contenue dans l'intervale"
echo ${var1#*[MNOP]}
echo "Utilisation de l'operateur % et %%"
echo "variable utilisé "$var1
echo ${var1%IOP*}
echo ${var1%*IOP}
echo ${var1%[X-Z]*}
