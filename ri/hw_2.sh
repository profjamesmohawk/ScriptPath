#!/bin/bash
#
# Reference Implementation of hello.sh
#
# Version 0
# Version 1: adds command line parameter
# Version ra: nake NAME required
# Version 2: support multiple NAME arguments
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

# print "Hello NAME" for each argument 
#
for NAME in $NAMES
do
	echo "Hello $NAME"
done
