#!/bin/bash
read -p "Enter your Telugu Maarks : " T
read -p "Enter your Hindi Maarks : "  H
read -p "Enter your English Maarks : " E
read -p "Enter your Maths Maarks : " M
read -p "Enter your Science Maarks : " S
read -p "Enter your Social Maarks : " SO
if [ $T -gt 35 -a $H -gt 35 -a $E -gt 35 -a $M -gt 35 -a $S -gt 35 -a $SO -gt 35 ] 
then
	echo "PASSED"
else
	echo "FAILED"
fi












