#!/bin/bash

#write function that will take two inputs as a input parameters & return their sum as output.

#input list/parameter list:two variable
#return/output type:sum of 2 numbers

print_sumnumbers(){	
	sum=`expr $1 + $2`	
	return $sum	
}
# store the return value : $?

print_sumnumbers 10 30
echo "the sum is : " $?
#a=$?
#echo "the sum is :" $a

print_sumnumbers 40 90
echo "the sum is : " $?

print_sumnumbers 70 50
echo "the sum is : " $?




#c_programming_example:
#int sumnumber(int a , int b){
#	return a+b;
#}
#x=sumnumber(2,3);
#printf("sum: %d" ,x);



