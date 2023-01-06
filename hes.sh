#! /bin/bash

# Given string 
read -p "Enter your String : " string

# Setting IFS (input field separator) value as ","
IFS='\n'

# Reading the split string into array
read -ra arr <<< "$string"

# Print each value of the array by using the loop
for val in "${arr[@]}";
do
	  echo "\n"
  done
