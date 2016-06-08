#!/bin/bash

date +"%Y-%m-%d" | sed -e 's/\([0-9]*\)-\([0-9]*\)-\([0-9]*\)/\3-\2-\1/'
#sed place le premier argument en dernier le deuxieme reste deuxieme et le troisieme argument passe en premier
#Soit le but passer la date format anglais en format français
