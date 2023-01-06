#!/bin/bash
read -p "Enter your File Name: " file
echo "Number of Words in your file are"
echo $file | wc -w
echo "Number of Characters in your file are"
echo $file | wc -c
echo "Number of Lines in your file are"
echo $file | wc -l
