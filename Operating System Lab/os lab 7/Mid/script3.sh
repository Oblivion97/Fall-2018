#!/bin/bash

ar=('4' '5' '43' '52' '65' '87' '41' '70' '27' '30')
min=${ar[0]}
max=${ar[9]}

for ((i=0; i < ${#ar[@]}; i++ ))
do
  if(( ${ar[$i]} < $min )); then 
       min=${ar[$i]}
       minindex=$i
  fi
  
  if(( ${ar[$i]} > $max )); then 
       max=${ar[$i]}
       minindex=$i
  fi
done

echo " max: "$max
echo " min: "$min
echo "index: "$minindex
echo "index: "$maxindex
