#!/bin/bash

# Checks if a document has a given number of pages.

# Usage: ./assert-page-count.sh document.pdf 42

PAGENUM=$(pdftk $1 dump_data | grep "NumberOfPages" | tr -d " ")

if [ "$PAGENUM" != "NumberOfPages:$2" ]
then
  echo "$1 should have $2 pages, but has $PAGENUM."
  exit 1
fi

exit 0