#!/bin/bash

# vehicle=$1
# echo "enter vehicle name : "
# read vehicle

# case $vehicle in
# 	"car" )
# 		echo "rent of $vehicle is 100$" ;;
# 	"van" )
# 		echo "rent of $vehicle is 100$" ;;
# 	"bycycle" )
# 		echo "rent of $vehicle is 100$" ;;
# 	"truck" )
# 		echo "rent of $vehicle is 100$" ;;
# 	* )
# 		echo "unknown vehicle" ;;
		
# esac
#LANG=C[if the input shows wrong output run in the terminal]
echo -e "enter value : \c"
read value

case $value in
	[a-z] )
		echo "user entered $value a to z" ;;
	[A-Z] )
		echo "user entered $value A to Z" ;;
	[0-9] )
		echo "user entered $value 0 to 9" ;;
	? )
		echo "user entered $value special charecter" ;;
	* )
		echo "user entered $value unknown value" ;;
		
esac