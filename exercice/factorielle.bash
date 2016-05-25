#!/bin/bash

#n = argument 1 si argument 1 n'est pas défini alors n = 1
n=${1:-1}
i=1
f=1
while [ $i -le $n ] ; do
	f=$((f * i++))
done

echo "$n! =$f"
