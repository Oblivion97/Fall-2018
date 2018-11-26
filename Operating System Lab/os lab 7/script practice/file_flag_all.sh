#! /bin/bash

# search file by name
# echo -e "enter file name : \c"
# read file_name

# if [ -e $file_name ] 
# then
# 	echo "$file_name found"
# else
# 	echo "$file_name not found"
# fi

# # search directory 
# echo -e "enter file name : \c"
# read file_name

# if [ -d $file_name ] 
# then
# 	echo "$file_name found"
# else
# 	echo "$file_name not found"
# fi

# search other files

# [-b]block special file:bin file( pic/video/music )
# [-c]charecter special file: text/data
# [-s]file empty or not[without extention]
# [-r]read permission
# [-w]write permission
# [-x]execute permission

echo -e "enter file name : \c"
read file_name

if [ -s $file_name ] 
then
	echo "$file_name empty"
else
	echo "$file_name not empty"
fi