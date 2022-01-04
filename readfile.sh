# using read command to read file
count=1
cat ./continueornot.sh | while read line
do
	echo "Line $count : $line"
	count=$[ $count + 1 ]
done
echo "Finished processing file"
exit
