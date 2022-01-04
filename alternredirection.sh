#!/bin/bash
# using an alternative file descriptor

exec 3> outfile.txt

echo "this should display on monitor"
echo "this should be stored in a file" >&3
echo "this should be back on the monitor"

