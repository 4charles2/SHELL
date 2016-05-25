#!/bin/bash

function correspondance
{
	case "$1" in
		$2) echo les deux arguments sont égaux
		return 0;;
		*) echo les deux arguments en sont pas égaux
		return 1;;
	esac
}
