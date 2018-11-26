#!/bin/bash
#
# Linux Shell Scripting Tutorial 1.05r3, Summer-2002
#
# Written by Vivek G. Gite <vivek@nixcraft.com>
#
# Latest version can be found at http://www.nixcraft.com/
#

avg=0
temp_total=0
number_of_args=$#

#
# First see the sufficent cmd args
#
if [ $# -lt 2 ] ; then
   echo -e "Opps! I need atleast 2 command line args\n"
   echo -e "Syntax: $0: number1 number2 ... numberN\n"
   echo -e "Example:$0 5 4\n\t$0 56 66 34" 
   exit 1
fi

#
# now calculate the average of numbers given on command line as cmd args
#
  
for i in $*
do

   #  addition of all the numbers on cmd args
   temp_total=`expr $temp_total + $i`

done

avg=`expr $temp_total / $number_of_args`
echo "Average of all number is $avg"


#
# ./ch.sh: vivek-tech.com to nixcraft.com referance converted using this tool
# See the tool at http://www.nixcraft.com/uniqlinuxfeatures/tools/
#
