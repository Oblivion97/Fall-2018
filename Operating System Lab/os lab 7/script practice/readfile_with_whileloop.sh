#!/bin/bash

#file read using while loop[input redirection]

# while read p
# do
# 	echo $p
# done < script.sh

#file read using while loop[read content & uptput it]
# cat script.sh | while read p
# do
# 	echo $p
# done < script.sh

# read file from some folder.
#terminal
# cat /etc/host.conf

#read file using IFS=internal field seperator [word spliting]
while IFS= read -r line
do
	echo $p
done < /etc/host.conf