#!/bin/bash

index=0
while [ $index -lt 5 ] ; do
	echo $1
	sleep 1
	: $((index++))
done
