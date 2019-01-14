#!/bin/bash

fibbonacci(){
a=0
b=1
c=0
echo "" $b
for (( i=0; i<$1; i++ ))
do
	c=$(expr $a + $b)
	a=$b
	b=$c
	echo "" $c
done
}

fibbonacci 5

