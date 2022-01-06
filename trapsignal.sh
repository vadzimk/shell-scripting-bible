#!/bin/bash
# Testing signal trapping

trap "echo ' Sorry! I have trappeed Ctrl+C'" SIGINT

echo this si a test script

count=1
while [ $count -le 5 ]
do
	echo "loop #$count"
	sleep 1
	count=$[ $count + 1 ]
done

echo "This is the end of the test script"
exit
