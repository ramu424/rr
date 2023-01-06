#!/bin/bash
read -p "Enter your file Name: " Name
read -p "Enter Your file Name where we have to update your script : " File
a=$(sed "/^$/d" $Name > $File)
echo "$a"
echo "Done"
