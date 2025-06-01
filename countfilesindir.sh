#!/bin/bash

set -e

FOLDER_NAME=$1
OUTCOME=''

# Check if folder name is passed as a parameter

if test $# -ne 1; then
        OUTCOME='Invalid parameter; Pass folder name as a parameter'
        echo $OUTCOME
        exit 0
fi

# Check if folder exist
if [[ ! -d $FOLDER_NAME ]]; then
        OUTCOME='Folder doesn''t exist'
	echo $OUTCOME
	exit 0
fi

NUMBER_OF_FILES=$(ls -1 $FOLDER_NAME | wc -l)
echo $NUMBER_OF_FILES
