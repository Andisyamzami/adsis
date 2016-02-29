#!/bin/bash
echo "masukin : "
read str
if [[ "$str" =~ [[:upper:]] ]]; then
  echo "uppercase character found"
fi

