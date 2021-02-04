#!/usr/bin/env bash

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

# set zipcode variables
# main zip code - a.k.a home
# readmin, ma
zip_1=01867
# second zip code
# plymouth, nh
zip_2=03264


# Arguments
##################

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
	curl "wttr.in/${zip_1}?0";
	echo;
	curl "wttr.in/${zip_2}?0";
fi

# Today argument
if [[ $1 == 'today' ]]
then 
	clear;
	curl "wttr.in/${zip_1}?1";

fi

# Search argument
if [[ $1 == 'search' ]]
then 
	clear;
	curl wttr.in/$2
fi




