#!/bin/bash
# A sample shell script to add user to the system
# Check password for strength 
# Written by Vivek Gite under GPL v2.x+
# ----------------------------------------------
read -p "Masukan nama calon wanita: " cewe
read -p "Masukan nama calon pria: " cowo
echo
echo "pemerosesan kecocokan sedang berjalan..."
echo "."
echo ".."
echo "..."
#result="$(cracklib-check <<<"$password")"
# okay awk is  bad choice but this is a demo 
#okay="$(awk -F': ' '{ print $2}' <<<"$result")"


if [[ "$cewe" == "dwi fajar utami" && "$cowo" == "andis muhammad syamzami" ]]
then
	echo "$cewe" "dan" "$cowo" "cocok sekali"
else
	echo "$cewe" "dan" "$cowo" "sangat tidak cocok"
fi
