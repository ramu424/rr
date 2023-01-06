#!/bin/bash
read -p "Enter your file Name : " Name
a=$(wc -w $Name)
echo "The Number of words in the file are $a"
b=$(wc -c $Name)
echo "The Number of characters are in the file are $b"
c=$(wc -l $Name)
echo "The Numner of Lines in the file are $c"


