#!/bin/bash
# creating a read/write file descriptor
exec 3<> rwfile.txt
read line <&3
echo "read: $line" # will read the first line
echo "This is a test line" >&3 # starting where the pointer located will write this line

