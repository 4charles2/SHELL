#!/bin/bash

#Ouvre firefox si pas ouvert sinon ajoute juste les deux onglets précisser
gnome-terminal -e 'bash -c "firefox https://openclassrooms.com/dashboard & firefox http://mfmradio.fr/radio/webradio/1/mfm-radio & firefox https://translate.google.fr/?hl=fr#en/fr/hello & evince --page-index=93 /home/doc2rue/Bureau/livre_openclassroom/livre/scripts_shell.pdf &  cd /home/doc2rue/Bureau/SHELL/SHELL/;vim ."'
gnome-terminal -e 'bash -c "cd /home/doc2rue/Bureau/site_php/;vim . "'
cd /home/doc2rue/Bureau/SHELL/SHELL/; ll
echo "Bonjour Charles Bonne journée !"
