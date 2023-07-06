#!/bin/bash
#
# Reference Implementation of hello.sh
#
# Version 0
# Version 1: adds command line parameter
# Version ra: nake NAME required
# Version 2: support multiple NAME arguments
# Version 3: different messages for week-day vs weekend 
#
# James Long
# Summer 2023

# Give our set of arguments a more human friendly name
#  (note change from NAME to NAMES with this version)
NAMES=$*

# if $NAMES is empty, complain and exit 
if [ "$NAMES" = "" ]
then
	echo "at least one NAME is required" >&2
	exit 1
fi

# use command substitution to get the current day of week from the date command
DAY_OF_WEEK=$(date +%u)

# the date command returns 1 for Monday, meaning any value less than 6
# is a week-day
# we will use (( ... )) to tell bash that everything inside the double brackets
# is math
#
if (( DAY_OF_WEEK < 6 ))
then
	MESSAGE_SUFFIX="have a productive day"
else
	MESSAGE_SUFFIX="have a nice weekend"
fi

# print custom greeting
#
for NAME in $NAMES
do
	echo "Hello $NAME, $MESSAGE_SUFFIX"
done
