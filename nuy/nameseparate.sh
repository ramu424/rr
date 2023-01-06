#!/bin/bash
read -p "Enter your Name: " Name
mystring=$Name
for token in "/$*"
do 
	echo   "$token"
done


