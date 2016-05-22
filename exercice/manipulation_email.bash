#!/bin/bash
adresse=utilisateur@machine.org

echo "Recuperer le login d'une adresse email"
echo "adresse mail complete : $adresse"
echo ${adresse%%@*}
adresse=utilisateur

echo "recuperer le nom d'hôte dans une adresse de machine"
adresse=machine.entreprise.com
echo "Nom de la machine : $adresse"
echo ${adresse%%.*}
adresse=machine

