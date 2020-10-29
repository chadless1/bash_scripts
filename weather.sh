#!/usr/bin/env zsh

##################
# Weather Script #
##################
#
# BY: chadless1
# 
# Weather script fetches wttr.in weather data
#
# Command line arguments
# - short - displays only temp and description
# - today - displays only todays weather
# - search - search weather by city and state
#
#


# No arugments
if [[ -z $1 ]]
then
	clear;
	curl wttr.in
fi

# Short argument
if [[ $1 == 'short' ]]
then 
	clear;
	curl 'wttr.in/01867?0';
	echo;
	curl 'wttr.in/03264?0';
fi

# Today argument
if [[ $1 == 'today' ]]
then 
	clear;
	curl 'wttr.in/01867?1';

fi

# Search argument
if [[ $1 == 'search' ]]
then 
	clear;
	curl wttr.in/$2
fi




