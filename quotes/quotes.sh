#!/bin/bash

#
# 	Author: 		Ruby Abrams
#	Title:			quotes.sh
#	Description:	Inspirational quote generator
#
#

#	variables
QUOTES="quotes.txt"

if [[ ! -f ${QUOTES}  ]]; then
	echo "File ${QUOTES} not found"
	exit
fi

LINE_COUNT=$( wc -l < ${QUOTES} | tr -d ' ' )
NUM=$(( $RANDOM%${LINE_COUNT} ))
LINE=$( sed -n "${NUM}p" < ${QUOTES} )
echo ""
echo ""
echo "${LINE}"
echo ""
echo ""