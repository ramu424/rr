#!/bin/bash
read -p "Enter your First String: "  string1
read -p "Enter your Second String: " string2
echo "Lenht of 1st string"
echo  $string1 | wc -c
echo "Length of 2nd string is $string1"
echo $string2 | wc -c
if [ $string1 == $string2 ]
then
	echo "Both are Equal"
else
	echo "Both are not Equal"
fi
