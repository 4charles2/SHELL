#!/bin/bash

echo "Renommez tous les fichier qui ont l'extension .tgz dans le repertoire courant par .tar.gz"

for i in *.TGZ ; do mv $i ${i%TGZ}tar.gz ; done
#mais les fichier .TGZ dans la variable i un à un et les renomme en .tar.gz
