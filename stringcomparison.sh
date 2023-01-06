read -p "Enter your first string : " var1
read -p "Enter your second string : " var2
echo "First string lenght is "${#var1}"
echo "Second string length is "${#var2}"
if [[ $var1 == $var2 ]]
then
	echo "Both are equal"
else
	echo "Botha are not equal"
fi

