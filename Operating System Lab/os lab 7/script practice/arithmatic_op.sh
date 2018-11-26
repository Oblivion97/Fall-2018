#!/bin/bash
# arithmatic operation

# number_1=20
# number_2=5
# echo "Addition = $(( number_1 + number_2 ))"
# echo "Subtraction = $(( number_1 - number_2 ))"
# echo "Multiplication = $(( number_1 * number_2 ))"
# echo "Division = $(( number_1 / number_2 ))"
# echo "pre-increment = $(( ++number_1 ))"
# echo "pre-decrement = $(( --number_2))"

number_1=20.5
number_2=5.2

echo "scale=2;$number_1+$number_2" | bc
echo "scale=2;20.5/5.2" | bc
echo "scale=2;20.5+5.2" | bc
echo "scale=2;20.5*5.2" | bc
echo "scale=2;20.5-5.2" | bc
echo "scale=2;20.5%5" | bc

num=27

echo "scale=2;sqrt($num)" | bc -l
echo "scale=2;3^3" | bc -l
