#!/bin/bash

#Ouvre firefox si pas ouvert sinon ajoute juste les deux onglets précisser
gnome-terminal -e 'bash -c "firefox https://openclassrooms.com/dashboard"'
gnome-terminal -e 'bash -c "sleep 5; firefox http://mfmradio.fr/radio/webradio/1/mfm-radio"'
gnome-terminal -e 'bash -c "sleep 5;firefox https://translate.google.fr/?hl=fr#en/fr/hello"'

#Ouvre le livre sur les scripts
gnome-terminal -e 'bash -c "sleep 6;evince --page-index=59 /home/doc2rue/Bureau/livre_openclassroom/livre/scripts_shell.pdf"'

#Ouvre un terminal et demarre vim avec explore de fichier du repertoire site_php
gnome-terminal -e 'bash -c "cd /home/doc2rue/Bureau/site_php/;vim ."'
#Trouver le moyen de deplacer le terminal dans l'espace de travail désiré

#Ouvre un terminal avec vim explore
gnome-terminal -e 'bash -c "cd/home/SHELL/SHELL/;vim ."'
