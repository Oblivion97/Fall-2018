#!/bin/bash
os=('ubuntu' 'windows' 'macos')
os[3]='linux' #add element
os[1]='linux' #update element

unset os[1] #remove element
echo "${os[@]}"
echo "${os[1]}"
echo "${!os[@]}" #elements no
echo "${#os[@]}" #length array

string=HMMahmudulHasan
echo "${string[@]}"