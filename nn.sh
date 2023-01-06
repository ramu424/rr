#!/bin/bash
read -p "Enter your Name: " Name
x=$Name
for x in $*
do
    echo "$@"
done
