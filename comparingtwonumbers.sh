#!/bin/bash
read -p "Enter your first Number : " first
read -p "Enter your Second Number : " second
if [[ $first > $second ]]
then 
	echo "First Number is greater than second Number"
elif [[ $first < $second ]]
then
	echo "First Number is less than Second Number"
else
	echo "First Number and SEcond Number are Equal"
fi
