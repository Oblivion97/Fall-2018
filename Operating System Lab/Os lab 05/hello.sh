#!/bin/bash

#x=1+1 #x=2
#y=21-2 #y19


#expr :

x=$(expr 1 + 1) #space between values & expression
echo $x

num1=20
num2=5

result=$(expr $num1 + $num2)
echo $result
