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
	echo "mengandung"    # $substring is in $string
else
	echo "tidak mengandung"
fi

 if [[ ${#password} -ge 8 ]]
 then
	if [[ "$password" =~ [[:upper:]] ]]
	then
		echo "password sudah mengandung paling tidak 1 Uppercase"
		if [[ "$password" =~ [[:lower:]] ]]
		then
			echo "password sudah mengandung paling tidak 1 lowercase"
			if [[ "$password" == *['!'@#\$%^\&*()_+]* ]]
			then 
				echo "udah ada stringnya"
				if [[ "$password" == *[1234567890]* ]]
				then
					echo "udah ada digitnya"
				else
					echo "harus pake digit"
				fi
			else
				echo "harus aada 1 character minimal"
			fi
		else
			echo "password harus mengandung paling tidak 1 lowercase"
		fi
	else
		echo "password harus mengandung paling tidak 1 Uppercase"
	fi
 else
	echo "please enter password more then 8 character"
 fi
#result="$(cracklib-check <<<"$password")"
# okay awk is  bad choice but this is a demo 
#okay="$(awk -F': ' '{ print $2}' <<<"$result")"
#if [[ "$okay" == "OK" ]]
#then
#	echo "Adding a user account please wait..."
#	/sbin/useradd -m -s /bin/bash $user
#	echo "$user:$password" | /sbin/chpasswd
#else
#	echo "Your password was rejected - $result"
#        echo "Try again."
#fi
