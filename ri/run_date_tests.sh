#!/bin/bash
# 
# script to test hello.sh with different dates
# reads DATE_STRING EXPECTED_RESULT lines from stadard in
#
#
# James, Summer 2023

# export DATE_STRING so that our children can see it
export DATE_STRING

# put stub date in path
PATH=.:$PATH

PASS_COUNT=0
FAIL_COUNT=0

# run one test for each line read from stdin
#
while read DATE_STRING EXPECTED_RESULT
do
	REAL_RESULT=$( ./hw_3.sh james 2>/dev/null )

	echo -n "$DATE_STRING = $EXPECTED_RESULT : $REAL_RESULT : "
	if [[ ${REAL_RESULT} =~ ${EXPECTED_RESULT} ]]
	then
		echo "pass"
		(( PASS_COUNT++ ))
	else
		echo "fail"
		(( FAIL_COUNT++ ))
	fi
done  

echo "Pass: $PASS_COUNT  Fail: $FAIL_COUNT" 
if (( FAIL_COUNT ))
then
	exit 1
fi
