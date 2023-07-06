#!/bin/bash
#
# Reference Implementation of hello.sh
#
# Version 0
# Version 1: adds command line parameter
# Version 1a: nake NAME required
#
# James Long
# Summer 2023

# give our first parameter a more human friendly name
NAME=$1

# if $NAME is empty, complain and exit 
if [ "$NAME" = "" ]
then
	echo "NAME is required"
	exit 1
fi

echo "Hello $NAME"
