#! /usr/bin/bash

echo "Enter file name:"
read fileName

if [[ -f $fileName ]]
then
	echo "Enter word:"
	read grepvar
	{
	grep -i $grepvar $fileName
	
	} > new_file1.txt
	
else
	echo "$fileName doesn't exist"
fi

cat new_file1.txt | column -t -s ":" > new_file2.txt

