#!/bin/bash
read -p "Enter your Name: " Name
mystring=$Name
for  $mystring in $@
do 
	      echo "$*"
      done

