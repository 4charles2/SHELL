#!/bin/bash

echo "verifier si une variable et initialise si non affiche un message"

function verif
{
	: ${ma_variable:?"n'est pas definie"}
	echo ma_variable = $ma_variable
}
