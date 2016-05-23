#!/bin/bash
tab="coucou"
tab[1]="sa first"
echo $tab
echo ${tab[*]}
echo ${tab[@]}
