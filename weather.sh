#!/usr/bin/env bash

#################
# Weather Script#
#################

# 
# BY: chadless1
#
# Uses wttr.in to fetch weather data
#
#  command line arguments are:
#  short - displays just current temp and description
#  today - displays todays weather
#  search - allows you to search by city,state
#
##########################################################


# if no arguments given
if [[ -z $1 ]]
then
	clear;
	curl wttr.in
fi

# if short argument given
if [[ $1 == 'short' ]]
then 
	clear;
	curl 'wttr.in/01867?0';
	echo;
	curl 'wttr.in/03264?0';
fi

# if today argument given
if [[ $1 == 'today' ]]
then 
	clear;
	curl 'wttr.in/01867?1';

fi

# if search argument given
if [[ $1 == 'search' ]]
then 
	clear;
	curl wttr.in/$2
fi




