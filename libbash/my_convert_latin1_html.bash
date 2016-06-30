#!/bin/bash
#Permet de modifier les carectères accentué en entities HTML
echo "Atention ce script va modifier le fichier en argument"
echo -n "Pour confirmer y : "
read
if [ $REPLY != "y" ] ; then
	echo "Abandon"
	exit
fi

latin1[0]="Á"
latin1[1]="Â"
latin1[2]="Æ"
latin1[3]="Ç"
latin1[4]="È"
latin1[5]="É"
latin1[6]="Ê"
latin1[7]="Ë"
latin1[8]="Î"
latin1[9]="Ï"
latin1[10]="Ô"
latin1[11]="Ù"
latin1[12]="Û"
latin1[13]="Ü"
latin1[14]="à"
latin1[15]="â"
latin1[16]="æ"
latin1[17]="ç"
latin1[18]="è"
latin1[19]="é"
latin1[20]="ê"
latin1[21]="ë"
latin1[22]="î"
latin1[23]="ï"
latin1[24]="ô"
latin1[25]="ù"
latin1[26]="û"
latin1[27]="ü"
latin1[28]="ÿ"

html[0]="\&Agrave;"
html[1]="\&Acirc;"
html[2]="\&AElig;"
html[3]="\&Ccedil;"
html[4]="\&Egrave;"
html[5]="\&Eacute;"
html[6]="\&Ecirc;"
html[7]="\&Euml;"
html[8]="\&Icirc;"
html[9]="\&Iuml;"
html[10]="\&Ocirc;"
html[11]="\&Ugrave;"
html[12]="\&Ucirc;"
html[13]="\&Uuml;"
html[14]="\&agrave;"
html[15]="\&acirc;"
html[16]="\&aelig;"
html[17]="\&ccedil;"
html[18]="\&egrave;"
html[19]="\&eacute;"
html[20]="\&ecirc;"
html[21]="\&euml;"
html[22]="\&icirc;"
html[23]="\&iuml;"
html[24]="\&ocirc;"
html[25]="\&ugrave;"
html[26]="\&ucirc;"
html[27]="\&uuml;"
html[28]="\&yuml;"

index=0

for caractere in ${latin1[@]} ; do
	sed -ie "s/$caractere/${html[$index]}/g" $1
	((index++))
done

echo "Le fichier à été modifier"
