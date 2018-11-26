echo -e "enter file name : \c"
read file_name

if [ -f $file_name ] 
then
	if [ -w $file_name ]
	then
		echo "write something & press CLTR+D."
		cat >> $file_name
	else
		echo "file don't have write permission."
	fi
else
	echo "$file_name not exixt."
fi