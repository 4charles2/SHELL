#!/bin/bash

function compte
{
	local i;
	for i in $(seq 3) ; do
		echo "$1 : $i"
		sleep 1
	done
}

if [ "$MON_PID" = "$PPID" ] ; then
#Processus FILS
	echo "FILS : mon PID est $$, mon PPID est $PPID"
	compte "FILS"
	echo "FILS : je me termine"
else
#processus Père
	export MON_PID=$$
	echo "PERE : mon PID est $$"
	echo "PERE : je lance un fils"
	$0 &
	echo "PERE : mon fils a le PID $!"
	compte "PERE"
	echo "PERE : j'attends la fin de mon fils"
	wait
	echo "PERE : je me termine"
fi
