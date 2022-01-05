#!/bin/bash
# read file and create insert statements

outfile='members.sql'
IFS=',' # environment variable - internal field separator
while read lname fname address city state zip
do 
	cat>> $outfile << EOF  # >> output redirection, << input redirection
	insert into members (lname, fname, address, ciyt, state, zip) values ('$lname', '$fname', '$address', '$city', '$state', '$zip');
EOF
done < ${1} # first command line argument specifies the data file from which to read the data
