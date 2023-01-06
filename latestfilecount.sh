#!/bin/bash
read -p "Enter your file Name: " file
echo "Number of Characters in your file are"
cat $file | wc -c
echo "Number of Words in your file are"
cat $file | wc -w
echo "Number of Lines in your file are"
cat $file | wc -l
