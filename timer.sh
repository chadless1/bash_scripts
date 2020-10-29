#!/usr/bin/env bash

################
# Timer script #
################
#
# BY: chadless1
#
# set minutes and seconds
# counts down to zero
#


clear

# ask user for input
echo
echo "Enter Seconds: "
read num1

echo "Enter Minutes: "
read num2

# convert minutes to seconds
num2=$(($num2*60))

# create total time in seconds
time_count=$(($num1+$num2))

clear

# count down to zero from total time
# in seconds

echo
echo "Counting ... "
echo

for i in $( eval echo {1..$time_count})
do
	time_count=$(($time_count -1))
	
	echo $time_count
	sleep 1
done

clear

# end of timer 
echo 
echo "Time is up!!"
echo



