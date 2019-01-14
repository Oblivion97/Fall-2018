echo -e "enter value : \c"
read value1 value2
echo -e "enter operator : \c"
read operator

case $operator in
	+ )
		echo "scale=2;$value1+$value2" | bc ;;
	- )
		echo "scale=2;$value1-$value2" | bc ;;
	* )
		echo "scale=2;$value1*$value2" | bc ;;
	/ )
		echo "scale=2;$value1/$value2" | bc ;;
			
esac
