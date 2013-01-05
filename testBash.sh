#!/bin/sh

# Find all header files
for item in `find -name "*.h"` 
do
	# Get only the filename without path
	filename = "Hello" # `basename $item`
	'echo $filename'
	
	# Search all headers and source files for any reference to this file
	#for searchedFile in `find -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.hpp"`
	#do
	#	echo $searchedFile
		
		#`grep -i -r $filename $searchedFile`
	#done
done
