#!/bin/bash

#global variable & local variable

#input list/parameter list:
#return/output type:

printname(){
	#name="mark" #global variable
	local name="mark" #local variable
	echo "the name is : " $name
}

name="tom"
echo "before funtion call, name is :" $name
printname
echo "after funtion call, name is :" $name





#c_programming_example:
#int x; #global variable
#void changeX(){
#	x=20
#	peintf("value of x :%d",x);
#}
#void main(){
#	x=10;
#	printf("before function call : %d",x);
#	changeX()
#	printf("before function call : %d",x);
#}
