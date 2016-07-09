#!/bin/bash

pattern=$1
filename=$2

count=$(pdfgrep -c $pattern $filename)

echo "Checking $filename for presence of $pattern ..."

if [ $count -ge 1 ]
then
  echo "$2 contains $1."
  exit 1
fi

exit 0