#!/bin/bash

while true ; do
	FICHIER=$(date "+%Y_%m_%d_%H_%M")
	TEMP=/var/tmp/enreg_$$
	/usr/bin/enregistreur --serveur 192.1.5.20 --fichier $TEMP &
	at now + 1 hours <<-FIN
	kill -INT $!
	FIN
	wait
	FICHIER=${FICHIER}$(date "+-%Y_%m_%d_%H_%M.dat")
	mv $TEMP $FICHIER
done
