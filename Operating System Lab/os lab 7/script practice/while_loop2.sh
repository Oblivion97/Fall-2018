#!/bin/bash

n=1
# while [ $n -le 10 ]
while (( $n <= 10 ))
do
	echo "$n"
	# n=$(( n+1 ))
	# (( n++ ))
	(( ++n ))
	# sleep 1 #pausing output
	# gnome-terminal & # open extra terminal
	

done