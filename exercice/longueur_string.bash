#!/bin/bash
variable=azertyuiop
echo "Affiche la taille de la variable : $variable"
echo "Elle contient ${#variable} caractere."

echo "Variable numérique exemple variable initialisé par le shell $EUID"
echo "La taille d'un variable numerique et le nombre de caractere qui compose la valeur"
echo "La variable numérique : $EUID contient ${#EUID} caractere"

echo "Les variables vides ou non définies ont des longueurs nulles"
variable=
echo "La variable $variable est vide"
echo "Elle est composé de ${#variable} caractere"
echo "longueur d'une variable inexistante"
echo "Elle est composé de ${#inexistent} caractere"

