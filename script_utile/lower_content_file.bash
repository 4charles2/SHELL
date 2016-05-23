#!/bin/bash

while [ -n "$1" ]; do
	content=$(tr [A-Z] [a-z] < $1)
	echo "$content" > $1
	echo "Voici le resultat : "$(cat "$1")
	shift
done
