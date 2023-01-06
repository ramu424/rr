#!/bin/bash
read -p "Enter your 1st Number : " x
read -p "Enter your 2nd Number : " y
((add=x+y))
echo "Addition is $add"
((sub=x-y))
echo "Substraction is $sub"
((mul=x*y))
echo "Multiplication is $mul"
((div=x/y))
echo "Division is $div"
