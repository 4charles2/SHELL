#!/bin/bash

#Remplace tout les accents par les lettre simple pour passer de la table latin 1 à la table ascii standard

sed -e 's/[ÀÁÂÃÄÅ]/A/g'|
sed -e 's/Æ/AE/g'|
sed -e 's/Ç/C/g'|
sed -e 's/[ÈÉÊË]/E/g'|
sed -e 's/[ÌÍÎÏ]/I/g'|
sed -e 's/Ñ/N/g'|
sed -e 's/[ÒÓÔÕÖØ]/O/g'|
sed -e 's/[ÙÚÛÜ]/U/g'|
sed -e 's/ Y  ́ /Y/g'|
sed -e 's/[àáâãä]/a/g'|
sed -e 's/æ/ae/g'|
sed -e 's/ç/c/g'|
sed -e 's/[èéêë]/e/g'|
sed -e 's/[ìíîï]/i/g'|
sed -e 's/ñ/n/g'|
sed -e 's/[òóôöø]/o/g'|
sed -e 's/[ùúûü]/u/g'|
sed -e 's/  ́y /y/g'|
