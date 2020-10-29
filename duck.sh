#!/usr/bin/env bash

###################
#  Search script  #
###################
#
# BY: chadless1
#
# ***requires w3m to be installed ***
# Launch w3m in terminal
# use second argument as search
# use duckduckgo.com for search engin
#
# if no argument is given will open w3m to duck duck go
#
# * need to reload search page to bring to proper lite url
# * need to fix load issue
#


if [[ -z $1 ]]
then
	w3m "www.duckduckgo.com";
else
	w3m "www.duckduckgo.com/?q=$1"

fi




