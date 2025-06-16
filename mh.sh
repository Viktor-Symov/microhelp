#!/usr/local/bin/bash

# Help for Linux commands


DIR=`dirname $0`

Command_list=`find $DIR/data -type f -name "*" -exec basename \{} .txt \; | sort`



if [ $# -eq 0 ]
then
    echo "The Help supports arguments:"
    for element in $Command_list
    do
	printf " # hl %s\n" $element
    done
    echo ""
    exit 0
fi


if [ $# -eq 1 ]
then
    cat $DIR/data/$1.txt
    echo ""
    exit 0
fi

