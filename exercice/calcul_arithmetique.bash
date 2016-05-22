#!/bin/bash

echo "pour effectuer des calculs arithmetique on utilise la construction : \$((calcul))"
echo "Voici des calculs arithmetique"
echo "ci-dessous le resultat de l'opération : ((2 * (4 + (10/2)) -1))"
echo $((2 * (4 + (10/2)) - 1))
echo "opération : 7 % 3"
echo $((7%3))

echo "utilisation des opérateurs & | ^ << avec une representation base#nombre la base peut être de 36 maximum"
masque=2#000110
capteur=2#001010
echo "J'ai declarer la variable masque à 2#000110 et la variable 2#001010"
echo "j'effectue l'opération masque & capteur"
echo $(($masque & $capteur))
echo "j'effectue l'opération masque | capteur"
echo $(($masque | $capteur))
echo "j'effectue l'operration masque ^ capteur"
echo $(($masque ^ $capteur))
echo "J'effectue l'operation masque << 2"
echo $(($masque << 2))
echo "Je vais ecrire la même chose en deecimal"
masque=${masque#*#}
echo $((10#$masque))
