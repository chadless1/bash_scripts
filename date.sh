#!/usr/bin/env bash
#
# BY: chadless1
#
# Description:
# count days between dates
# between today and date you set
#

# today variable
now=$(date +%Y-%m-%d)

START=`date -d $now +%s`

# set end date
# *use one day after
END=`date -d "2021-05-22" +%s`

# calculate the differece
((diff=$END-$START))
((days=$diff/(60*60*24)))

# print remaining days
echo "$days days Until Wedding"




