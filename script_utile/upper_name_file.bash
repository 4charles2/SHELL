#!/bin/bash


while [ -n "$1" ]; do
	suffixe=${1#*.}
	mv $1 $(echo ${1%.*} | tr [a-z] [A-Z]).$suffixe
	shift
done
