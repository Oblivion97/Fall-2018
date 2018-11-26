#!/bin/bash
#
# Linux Shell Scripting Tutorial 1.05r3, Summer-2002
#
# Written by Vivek G. Gite <vivek@nixcraft.com>
#
# Latest version can be found at http://www.nixcraft.com/
#

#
# Declare the array of 5 subscripts to hold 5 numbers
#
declare nos[5]=(4 -1 2 66 10)

#
# Prints the number befor sorting
#
echo "Original Numbers in array:"
for (( i = 0; i <= 4; i++ ))
do
  echo ${nos[$i]}
done

#
# Now do the Sorting of numbers
#

for (( i = 0; i <= 4 ; i++ ))
do
   for (( j = $i; j <= 4; j++ ))
   do
      if [ ${nos[$i]} -gt ${nos[$j]}  ]; then
           t=${nos[$i]}
           nos[$i]=${nos[$j]}
           nos[$j]=$t
      fi
   done
done

#
# Print the sorted number
# 
echo -e "\nSorted Numbers in Ascending Order:"
for (( i=0; i <= 4; i++ )) 
do
  echo ${nos[$i]}
done

#
# ./ch.sh: vivek-tech.com to nixcraft.com referance converted using this tool
# See the tool at http://www.nixcraft.com/uniqlinuxfeatures/tools/
#
