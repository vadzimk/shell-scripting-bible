#!/bin/bash
# using a temporeary directory

tempdir=$(mktemp -d dir.XXXXXX)
cd $tempdir
tempfile1=$(mktemp temp.XXXXXX)
tempfile2=$(mktemp temp.XXXXXX)
exec 7> $tempfile1 # file descriptor is asssigned to temporary file
exec 8> $tempfile2

echo "Sending data to directory $tempdir"
echo "This is a test line of data fro $tempfile1" >&7
echo "This is a test line of data for $tempfile2" >&8
