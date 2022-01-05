#!/bin/bash
# writing to a temporary file form a script
# create a file in /temp directory
tempfile=$(mktemp mytemp.XXXXXX)
# redirect output to tempfile
exec 3>$tempfile
echo "This script writes to temp file $tempfile"
echo "this is the first line" >&3
echo "this is the second line" >&3
exec 3>&-
echo "done creating temp file The contents are:"
cat $tempfile
rm -f $tempfile
