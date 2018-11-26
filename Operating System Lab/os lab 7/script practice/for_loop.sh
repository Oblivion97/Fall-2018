#!/bin/bash
#for loop

# --------------------------------
# for VARIABLE in 1 2 3 4 5....N
# do
# 	command1
# 	command2
# 	command3
# 	commandN
# done
# --------------------------------
# for VARIABLE in File1 File2 File3
# do
# 	command1 on $VARIABLE
# 	command2 on $VARIABLE
# 	commandN
# done
# -----------------------------------------
# for OUTPUT in $(LINUX_or_UNIX_Commands_here)
# do
# 	command1 on $OUTPUT
# 	command2 on $OUTPUT
# 	commandN
# done
# --------------------------
# for (( EXP1; EXP2; EXP3 ))
# do
# 	command1
# 	command2
# 	command3
# done
# -------------------------------

# # print 1-5
# for i in 1 2 3 4 5
# do
# 	echo $i
# done

# # print 1-10
# # for i in {1..10}
# echo ${BASH_VERSION}
# #only work on bash 4 or better
# for i in {1..10..2} #increment by 2
# do
# 	echo $i
# done

for (( i=0; i<=5; i++ ))
do
	echo $i
done