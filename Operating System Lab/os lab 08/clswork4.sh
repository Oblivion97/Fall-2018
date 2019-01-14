#!/bin/bash

#write function that will take three inputs & print the sum of the numbers

#input list/parameter list:one variable
#return/output type:void

print_name(){
#first parameter will store at $1
#second parameter will store at $2	
	sum=$(expr $1 + $2 + $3)
	echo "the sum is :" $sum
}

print_name "3" "4" "5"



