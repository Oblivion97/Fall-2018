#!/bin/bash

echo "input number 1-9 : "
read n

for(( i=n;i>0;i-- ))
do
 for(( j=n;j>0;j-- ))
 do
   echo  "$i"
 done
   echo " "
done

