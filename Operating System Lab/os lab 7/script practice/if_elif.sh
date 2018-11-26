#! /bin/bash

# Conditionals let us decide whether to perform an action or not, 
# this decision is taken by evaluating an expression. 

# Expressions 

# An expression can be: String comparison, Numeric comparison, File operators and Logical 
# operators and it is represented by [expression]: 
# String Comparisons: 
# --------------------------------- 

# = compare if two strings are equal 
# != compare if two strings are not equal 
# -n evaluate if string length is greater than zero 
# -z evaluate if string length is equal to zero 

# Examples: 

# [ s1 = s2 ] (true if s1 same as s2, else false) 
# [ s1 != s2 ] (true if s1 not same as s2, else false) 
# [ s1 ] (true if s1 is not empty, else false) 
# [ -n s1 ] (true if s1 has a length greater then 0, else false) 
# [ -z s2 ] (true if s2 has a length of 0, otherwise false) 

# Number Comparisons: 
# ------------------------------------ 

# -eq compare if two numbers are equal 
# -ge compare if one number is greater than or equal to a number 
# -le compare if one number is less than or equal to a number 
# -ne compare if two numbers are not equal 
# -gt compare if one number is greater than another number 
# -lt compare if one number is less than another number 

# Examples: 

# [ n1 -eq n2 ] (true if n1 same as n2, else false) 
# [ n1 -ge n2 ] (true if n1greater then or equal to n2, else false) 
# [ n1 -le n2 ] (true if n1 less then or equal to n2, else false) 
# [ n1 -ne n2 ] (true if n1 is not same as n2, else false) 
# [ n1 -gt n2 ] (true if n1 greater then n2, else false) 
# [ n1 -lt n2 ] (true if n1 less then n2, else false)

# string comparision:
# --------------------

# = -is eaqual to - if [ "$a" = "$b" ]
# == -is equal to - if [ "$a" == "$b" ]
# != -is not equal to - if [ "$a" != "$b" ]
# < -is less than , in ASCII alphabet order - if [[ "$a" < "$b" ]]
# > -is greater than , in ASCII alphabet order - if [[ "$a" > "$b" ]]
# -z -string is null, that is,has 0 lenght

# my
# count=10

# if [[ $count -eq 10 ]]; then
# 	echo "condition working."
# fi

# count=10

# if (( $count > 9 )); then
# 	echo "condition working."
# fi

# word=abc
# word1=abc

# if [ $word == $word1 ]; then
# 	echo "condition working."
# fi

# if else

# word=abc
# word1=abc

# if [ $word != $word1 ]; then
# 	echo "condition working."
# else
# 	echo "condition is not working."
# fi

# if-elif

# word=abc

# if [[ $word == "abc" ]] 
# then
# 	echo "1.condition working."
# elif [[ $word == "bcd" ]] 
# then
# 	echo "2.condition is working."
# else
# 	echo "condition is not working"
# fi