#!/bin/bash

age=25
# if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
# if [ "$age" -gt 18 -a "$age" -lt 30 ]
if [[ "$age" -gt 18 && "$age" -lt 30 ]]
then
	echo "valide age."
else
	echo "not valide age."
fi