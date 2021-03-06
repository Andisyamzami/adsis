#!/bin/bash
# A sample shell script to add user to the system
# Check password for strength 
# Written by Vivek Gite under GPL v2.x+
# ----------------------------------------------
read -p "Enter username : " user
read -p  "Enter password : " password
echo
echo "Tesing password strength..."
echo
echo $user
echo $password
if test "${password#*$user}" != "$password"
then
	echo "weak password"    # $substring is in $string
else
	echo "oke"
fi

 if [[ ${#password} -ge 8 ]]
 then
	if [[ "$password" =~ [[:upper:]] ]]
	then
		if [[ "$password" =~ [[:lower:]] ]]
		then
			if [[ "$password" == *['!'@#\$%^\&*()_+]* ]]
			then
				if [[ "$password" == *[1234567890]* ]]
				then
					echo "good password"
				else
					echo "weak password"
				fi
			else
				echo "weak password"
			fi
		else
			echo "weak password"
		fi
	else
		echo "weak password"
	fi
 else
	echo "weak password"
 fi
