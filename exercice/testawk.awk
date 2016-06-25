#! /usr/bin/awk -f
#Enlever le caractère # devant la ligne à tester
#Les ligne pouvant être tester son décalé par une tabulation
#Pour Mettre un # à chaque fin d'enregistrement
	#BEGIN {ORS="#"}{print}
#Fournir le fichier en ligne de commande lors de l'appel du script

#Cette ligne est un test des varibles NF
#Vérifier à quel moment sa valeur change et si elle change
#BEGIN {FS=":"; print "Avant modif de champ " NF ; OFS="#"} {print "après modif de champ" NF} {NF=NF ; print $0}

#Vérifie le nom d'un fichier examiner par awk
(FNR == 1){ print FILENAME}
