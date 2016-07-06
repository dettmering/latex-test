#!/bin/bash

PAGENUM=$(pdftk $1 dump_data | grep "NumberOfPages" | tr -d " " | cut -d: -f2-)

if [ $PAGENUM -ne $2 ]
then
  echo "$1 should have $2 pages, but has $PAGENUM."
  exit 1
fi

exit 0