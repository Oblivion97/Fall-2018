#!/bin/bash

# #exAMPLE:1
# for command in ls pwd date
# do
# 	echo "-------------$command------------------"
# 	$command
# done


for item in *
do
	# if [ -d $item ] #directory list
	if [ -f $item ] #file list
	then
		echo $item
	fi
done