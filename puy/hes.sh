#! /bin/bash
echo "Enter a String"
# Taking input from user
read text

# Counting words
word=$(echo -n "$text" | wc -w)
echo "Number of Words = $word"
