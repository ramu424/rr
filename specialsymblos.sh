#!/bin/bash
read -p "Enter your Name and village in same line : " Name
echo "$Name  $*"
echo "$Name  $0"
echo "$Name  $$"
echo "$Name  $#"
echo "$Name  $1"
echo "$Name  $@"
