#!/bin/bash
index=1
for i in * ; do
	echo $((index++))\) $i
done
