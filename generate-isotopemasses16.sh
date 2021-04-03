#!/bin/bash

if [[ -z "$1"  || -z "$2"  ]];  then
	echo "usage: inputfile skip-lines"
	exit -1
fi

infile=$1
skiplines=$2

echo "/* Atomic masses generated from $infile */"
echo "/* Values are in 'u' */"

IFS=$'\n'

typeset -i COUNTER
COUNTER=0
while read -r line
do
    if (( $COUNTER < $skiplines )); then
    	COUNTER=$COUNTER+1
    else
	    massenzahl=${line:16:3} 
	    massenzahl=`echo $massenzahl | sed "s/ //g"`
	    name=${line:20:2}
	    name=`echo $name | sed "s/ //g"`

	    mass="${line:96:3}.${line:100:6}${line:107:6}"

	    echo $name | grep -E "^[nA-Z][a-z]?$"   > /dev/null
	    namecheck=$?

	    echo $massenzahl | grep -E "^[0-9]+$"  > /dev/null
	    masscheck=$?

	    if [[ "$masscheck" == "0" && "$namecheck" == "0" ]]; then 
		    echo "%m${name}${massenzahl}:${mass} * %u $" 
	    fi
    fi
done < "$infile"
