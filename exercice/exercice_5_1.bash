#!/bin/bash

for i in $(seq -5 0) ; do
	echo ${i#-}
	sleep 1
done
