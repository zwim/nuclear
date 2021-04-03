#!/bin/bash

if [[ $#<2 ]]; then
 	echo "usage: switch-to-year xx"
	echo "xx ... 12, 16, 20"
fi

echo "change symlinks to year $1"

rm isotopemasses.mac
ln -s isotopemasses$1.mac isotopemasses.mac
rm isotope_array.mac
ln -s isotope_array$1.mac isotope_array.mac



