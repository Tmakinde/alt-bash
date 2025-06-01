#!/bin/bash

set -e

filename=$1
OUTCOME=''

# Check if filename is passed as a parameter
if test $# -ne 1; then
	OUTCOME='Invalid parameter; Pass filename as a parameter'
	echo $OUTCOME
	exit 0
fi

# Check if file name exist
if [[ -f $filename ]]; then
	OUTCOME='File exist'
else
	OUTCOME='File does not exist'
fi

echo $OUTCOME
